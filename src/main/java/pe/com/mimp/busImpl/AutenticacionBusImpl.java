package pe.com.mimp.busImpl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import pe.com.mimp.bean.Retorno;
import pe.com.mimp.bean.Usuario;
import pe.com.mimp.bus.AutenticacionBus;
import pe.com.mimp.dao.AutenticacionDao;
import pe.com.mimp.modelo.Menu;
import pe.com.mimp.modelo.MenuNiveles;
import pe.com.mimp.modelo.MenuPrincipal;
import pe.com.mimp.util.Seguridad;

import com.google.gson.Gson;

@Service
public class AutenticacionBusImpl implements AutenticacionBus {
	
	Gson gson = new Gson();
	private static final Logger log = Logger.getLogger(AutenticacionBusImpl.class);
	
	@Resource
	private AutenticacionDao autenticacionDao;
	
	@Override
	public Retorno autenticacion(Usuario usuario) {
		
		Retorno retorno = new Retorno();
		Usuario usu = new Usuario();
		
		String userid = "";
		String password = "";
		
		try {
			userid = usuario.getUsuario() != null ? usuario.getUsuario().toUpperCase() : "";
			password = Seguridad.fn_sEncrypting("PASSWORD", usuario.getClave().toString().toUpperCase());
			
			usu.setCodigoInstitucion(usuario.getCodigoInstitucion());
			usu.setUsuario(userid);
			usu.setClave(password);
			usu.setIpRemote(usuario.getIpRemote());
			
			return autenticacionDao.autenticacion(usu);
			
		} catch (NoSuchAlgorithmException e) {
			
			retorno.setCodigoRetorno("02");
			retorno.setMensajeRetorno(e.getMessage());
			
			return retorno;
		}
		
		
	}

	@Override
	public String opcionesMenu(int codigoUsuario) {
		
		List<MenuPrincipal> opciones = autenticacionDao.opcionesMenu(codigoUsuario); 
		
		String titulomenu = "";
		
		List<Menu> listaMenu = new ArrayList<Menu>();
		List<MenuNiveles> listaNiveles = new ArrayList<MenuNiveles>();
		for(MenuPrincipal menuPrincipal : opciones){
			
			String descMenu = menuPrincipal.getDescMenu();
			if(!descMenu.equals(titulomenu)){
				Menu menu = new Menu();
				menu.setTituloMenu(descMenu);
				
				listaNiveles = new ArrayList<MenuNiveles>();
				
				MenuNiveles niveles = new MenuNiveles();
				niveles.setTituloSubMenu(menuPrincipal.getDescSubMenu());
				niveles.setLink(menuPrincipal.getLink());
				listaNiveles.add(niveles);
				
				menu.setNiveles(listaNiveles);
				
				listaMenu.add(menu);
				
				titulomenu = descMenu; 
			}else{
				MenuNiveles niveles = new MenuNiveles();
				niveles.setTituloSubMenu(menuPrincipal.getDescSubMenu());
				niveles.setLink(menuPrincipal.getLink());
				listaNiveles.add(niveles);
			}
			
		}
		
		//log.info(gson.toJson(listaMenu));
		
		return gson.toJson(listaMenu);
	}

}

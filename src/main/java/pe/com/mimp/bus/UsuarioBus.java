package pe.com.mimp.bus;

import java.util.List;

import pe.com.mimp.bean.Imei;
import pe.com.mimp.bean.MenuUsuarios;
import pe.com.mimp.modelo.Rol;
import pe.com.mimp.modelo.Unidad;
import pe.com.mimp.modelo.Usuario;

public interface UsuarioBus {

	public List<Usuario> listaUsuarios(int pagina, int registros, int codigoInstitucion, int codigoUt);
	
	public int cantidadUsuarios(int codigoInstitucion);
	
	public List<Rol> listaRol(int codigoUt);
	
	public List<Unidad> listaUnidad();
	
	public int grabarUsuario(Usuario usuario, List<Imei> lista);
	
	public String resetearClave(int codigoUsuario, String clave);
	
	public Usuario buscarUsuario(String dni);
	
	public String buscarMenuUsuario(int codigoUsuario);
	
	public String listarUsuarios();
	
	public void grabarMenuUsuario(List<MenuUsuarios> lista);
	
}

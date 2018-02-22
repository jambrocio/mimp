package pe.com.mimp.dao;

import java.util.List;

import pe.com.mimp.bean.Retorno;
import pe.com.mimp.bean.Usuario;
import pe.com.mimp.modelo.MenuPrincipal;

public interface AutenticacionDao {

	public Retorno autenticacion(Usuario usuario);
	
	public List<MenuPrincipal> opcionesMenu(int codigoUsuario);
	
}

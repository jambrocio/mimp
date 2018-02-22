package pe.com.mimp.bus;

import pe.com.mimp.bean.Retorno;
import pe.com.mimp.bean.Usuario;

public interface AutenticacionBus {

	public Retorno autenticacion(Usuario usuario);
	
	public String opcionesMenu(int codigoUsuario);
	
}

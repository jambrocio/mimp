package pe.com.mimp.bus;

import java.util.List;

import pe.com.mimp.modelo.CentrosEmergencia;
import pe.com.mimp.modelo.Ubigeo;

public interface GeneralBus {

	public List<Ubigeo> listaUbigeo(Ubigeo ubigeo);
	
	public List<CentrosEmergencia> listaCentrosEmergenciaLocal(CentrosEmergencia centrosEmergencia);
	
	public List<CentrosEmergencia> listaCentrosEmergenciaComisaria(CentrosEmergencia centrosEmergencia);
	
	public List<CentrosEmergencia> listaCentrosEmergenciaSAU(CentrosEmergencia centrosEmergencia);
	
}

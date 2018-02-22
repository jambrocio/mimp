package pe.com.mimp.busImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pe.com.mimp.bus.GeneralBus;
import pe.com.mimp.dao.GeneralDao;
import pe.com.mimp.modelo.CentrosEmergencia;
import pe.com.mimp.modelo.Ubigeo;

@Service
public class GeneralBusImpl implements GeneralBus {
	
	@Resource
	private GeneralDao generalDao;
	
	@Override
	public List<Ubigeo> listaUbigeo(Ubigeo ubigeo) {
		
		return generalDao.listaUbigeo(ubigeo);
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaLocal(CentrosEmergencia centrosEmergencia) {
		
		return generalDao.listaCentrosEmergenciaLocal(centrosEmergencia);
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaComisaria(CentrosEmergencia centrosEmergencia) {
		
		return generalDao.listaCentrosEmergenciaComisaria(centrosEmergencia);
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaSAU(CentrosEmergencia centrosEmergencia) {
		
		return generalDao.listaCentrosEmergenciaSAU(centrosEmergencia);
	}

}

package pe.com.mimp.busImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pe.com.mimp.bus.FichasBus;
import pe.com.mimp.dao.FichasDao;
import pe.com.mimp.modelo.TipoViolencia;
import pe.com.mimp.modelo.VinculosFamiliares;
import pe.com.mimp.modelo.Violencia;

@Service
public class FichasBusImpl implements FichasBus {
	
	@Resource
	private FichasDao fichasDao;
	
	@Override
	public List<TipoViolencia> listaTipoViolencia() {
		
		List<TipoViolencia> lista = new ArrayList<TipoViolencia>();
		
		for(TipoViolencia vio : fichasDao.listaTipoViolencia()){
			
			TipoViolencia tipoViolencia= new TipoViolencia();
			tipoViolencia.setCodigoTipoViolencia(vio.getCodigoTipoViolencia());
			tipoViolencia.setTipoViolencia(vio.getTipoViolencia());
			tipoViolencia.setFlagFactorRiesgo(vio.getFlagFactorRiesgo());
			
			List<Violencia> listaViolencia = fichasDao.listaViolencia();
			List<Violencia> listaAgregar = new ArrayList<Violencia>();
			
			for(Violencia viole : listaViolencia){
				if(vio.getCodigoTipoViolencia() == viole.getCodigoTipoViolencia()){
					 Violencia violencia = new Violencia();
					 violencia.setCodigoTipoViolencia(viole.getCodigoTipoViolencia());
					 violencia.setCodigoViolencia(viole.getCodigoViolencia());
					 violencia.setDescripcionViolencia(viole.getDescripcionViolencia());
					 violencia.setFlagMensaje(viole.getFlagMensaje());
					 violencia.setMensaje(viole.getMensaje());
					 
					 listaAgregar.add(violencia);
				}
			}
			
			tipoViolencia.setListViolencia(listaAgregar);
			
			lista.add(tipoViolencia);
		}
		
		return lista;
	}

	@Override
	public List<VinculosFamiliares> listaVinculosFamiliares() {
		
		return fichasDao.listaVinculosFamiliares();
	}

}

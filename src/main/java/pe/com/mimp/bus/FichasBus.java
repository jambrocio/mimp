package pe.com.mimp.bus;

import java.util.List;

import pe.com.mimp.modelo.TipoViolencia;
import pe.com.mimp.modelo.VinculosFamiliares;

public interface FichasBus {

	public List<TipoViolencia> listaTipoViolencia();
	public List<VinculosFamiliares> listaVinculosFamiliares();
	
}

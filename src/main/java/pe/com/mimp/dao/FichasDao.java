package pe.com.mimp.dao;

import java.util.List;

import pe.com.mimp.modelo.TipoViolencia;
import pe.com.mimp.modelo.VinculosFamiliares;
import pe.com.mimp.modelo.Violencia;

public interface FichasDao {
	
	public List<TipoViolencia> listaTipoViolencia();
	public List<Violencia> listaViolencia();
	public List<VinculosFamiliares> listaVinculosFamiliares();
	
}

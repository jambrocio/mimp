package pe.com.mimp.modelo;

import java.util.List;

public class TipoViolencia {

	int codigoTipoViolencia;
	String tipoViolencia;
	int flagFactorRiesgo;
	List<Violencia> listViolencia;
	
	public int getCodigoTipoViolencia() {
		return codigoTipoViolencia;
	}
	public void setCodigoTipoViolencia(int codigoTipoViolencia) {
		this.codigoTipoViolencia = codigoTipoViolencia;
	}
	public String getTipoViolencia() {
		return tipoViolencia;
	}
	public void setTipoViolencia(String tipoViolencia) {
		this.tipoViolencia = tipoViolencia;
	}
	public int getFlagFactorRiesgo() {
		return flagFactorRiesgo;
	}
	public void setFlagFactorRiesgo(int flagFactorRiesgo) {
		this.flagFactorRiesgo = flagFactorRiesgo;
	}
	public List<Violencia> getListViolencia() {
		return listViolencia;
	}
	public void setListViolencia(List<Violencia> listViolencia) {
		this.listViolencia = listViolencia;
	}
	
}

package pe.com.mimp.util;

import pe.com.mimp.bean.CamposObligatorios;

public class Util {

	public static CamposObligatorios retornarObjeto(String nombreCampo, String descripcion){
        CamposObligatorios campos = new CamposObligatorios();
        campos.setNombreCampo(nombreCampo);
        campos.setDescripcion(descripcion);
        return campos;
    }
	
	
}

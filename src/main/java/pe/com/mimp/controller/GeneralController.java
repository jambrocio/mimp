package pe.com.mimp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pe.com.mimp.bean.ResponseListBean;
import pe.com.mimp.bus.GeneralBus;
import pe.com.mimp.modelo.CentrosEmergencia;
import pe.com.mimp.modelo.Ubigeo;
import pe.com.mimp.session.DatosSession;

@Controller
public class GeneralController {
	
	@Autowired
	private DatosSession datosSession;
	
	@Autowired
	private GeneralBus generalBus;
	
	@RequestMapping(value = "/listar-ubigeo.json", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody ResponseListBean<Ubigeo> listarUbigeo(Ubigeo ubigeo){
		
		ResponseListBean<Ubigeo> response = new ResponseListBean<Ubigeo>();
		response.setRows(generalBus.listaUbigeo(ubigeo));
		
		return response;
	}
	
	@RequestMapping(value = "/listar-cem-local.json", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody ResponseListBean<CentrosEmergencia> listarCemLocal(CentrosEmergencia centrosEmergencia){
		
		ResponseListBean<CentrosEmergencia> response = new ResponseListBean<CentrosEmergencia>();
		response.setRows(generalBus.listaCentrosEmergenciaLocal(centrosEmergencia));
		
		return response;
	}
	
	@RequestMapping(value = "/listar-cem-comisaria.json", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody ResponseListBean<CentrosEmergencia> listarCemComisaria(CentrosEmergencia centrosEmergencia){
		
		ResponseListBean<CentrosEmergencia> response = new ResponseListBean<CentrosEmergencia>();
		response.setRows(generalBus.listaCentrosEmergenciaComisaria(centrosEmergencia));
		
		return response;
	}
	
	@RequestMapping(value = "/listar-cem-sau.json", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody ResponseListBean<CentrosEmergencia> listarCemSau(CentrosEmergencia centrosEmergencia){
		
		ResponseListBean<CentrosEmergencia> response = new ResponseListBean<CentrosEmergencia>();
		response.setRows(generalBus.listaCentrosEmergenciaSAU(centrosEmergencia));
		
		return response;
	}
}

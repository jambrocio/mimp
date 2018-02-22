package pe.com.mimp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pe.com.mimp.bean.ResponseListBean;
import pe.com.mimp.bus.FichasBus;
import pe.com.mimp.modelo.TipoViolencia;
import pe.com.mimp.modelo.VinculosFamiliares;
import pe.com.mimp.session.DatosSession;

@Controller
public class FichaRegistroController {
	
	@Autowired
	private DatosSession datosSession;
	
	@Autowired
	private FichasBus fichasBus;
	
	@RequestMapping(value = "/fichaRegistro", method=RequestMethod.GET)
	public String registroFicha(HttpServletRequest request) {
		
		return "fichaRegistro/ficha_registro";
	
	}
	
	@RequestMapping(value = "/registroCaso", method=RequestMethod.GET)
	public String registroCaso(HttpServletRequest request) {
		
		return "fichaRegistro/registro_caso";
	
	}
	
	@RequestMapping(value = "/legal", method=RequestMethod.GET)
	public String legal(HttpServletRequest request) {
		
		return "fichaRegistro/legal";
	
	}
	
	@RequestMapping(value = "/psicologico", method=RequestMethod.GET)
	public String psicologico(HttpServletRequest request) {
		
		return "fichaRegistro/psicologico";
	
	}
	
	@RequestMapping(value = "/social", method=RequestMethod.GET)
	public String social(HttpServletRequest request) {
		
		return "fichaRegistro/social";
	
	}
	
	@RequestMapping(value = "/listar-tipo-violencia.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody ResponseListBean<TipoViolencia> listarTipoViolencia(){
		
		ResponseListBean<TipoViolencia> response = new ResponseListBean<TipoViolencia>();
		response.setRows(fichasBus.listaTipoViolencia());
		
		return response;
	}
	
	@RequestMapping(value = "/listar-vinculos-familiares.json", method = RequestMethod.GET, produces="application/json")
	public @ResponseBody ResponseListBean<VinculosFamiliares> listarVinculosFamiliares(){
		
		ResponseListBean<VinculosFamiliares> response = new ResponseListBean<VinculosFamiliares>();
		response.setRows(fichasBus.listaVinculosFamiliares());
		
		return response;
	}
	
}

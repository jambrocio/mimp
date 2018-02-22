package pe.com.mimp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.com.mimp.bus.UsuarioBus;
import pe.com.mimp.session.DatosSession;

@Controller
public class ReportesController {

private static final Logger log = Logger.getLogger(ReportesController.class);
	
	@Autowired
	private DatosSession datosSession;
	
	@Autowired
	private UsuarioBus mantenimientoBus;
	
	@RequestMapping(value = "/reporteFichaRegistro", method=RequestMethod.GET)
	public String menuUsuario(HttpServletRequest request) {
		
		return "reportes/reporte_ficha_registro";
	
	}
	
}

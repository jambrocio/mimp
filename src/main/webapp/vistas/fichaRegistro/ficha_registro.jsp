<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<style>
    .gBubble{
        color:black;
        font-family:Tahoma, Geneva, sans-serif;
        font-size:12px;    
    }
    .tabs-left, .tabs-right {
  		border-bottom: none;
  		padding-top: 2px;
	}
	.tabs-left {
  		border-right: 1px solid #ddd;
	}
	.tabs-right {
  		border-left: 1px solid #ddd;
	}
	.tabs-left>li, .tabs-right>li {
  		float: none;
  		margin-bottom: 2px;
	}
	.tabs-left>li {
  		margin-right: -1px;
	}
	.tabs-right>li {
  		margin-left: -1px;
	}
	.tabs-left>li.active>a,
	.tabs-left>li.active>a:hover,
	.tabs-left>li.active>a:focus {
  		border-bottom-color: #ddd;
  		border-right-color: transparent;
	}
	.tabs-right>li.active>a,
	.tabs-right>li.active>a:hover,
	.tabs-right>li.active>a:focus {
  		border-bottom: 1px solid #ddd;
  		border-left-color: transparent;
	}
	.tabs-left>li>a {
  		border-radius: 4px 0 0 4px;
  		margin-right: 0;
  		display:block;
	}
	.tabs-right>li>a {
  		border-radius: 0 4px 4px 0;
  		margin-right: 0;
	}
	.vertical-text {
  		margin-top:50px;
  		border: none;
  		position: relative;
	}
	.vertical-text>li {
  		height: 20px;
  		width: 120px;
  		margin-bottom: 100px;
	}
	.vertical-text>li>a {
  		border-bottom: 1px solid #ddd;
  		border-right-color: transparent;
  		text-align: center;
  		border-radius: 4px 4px 0px 0px;
	}
	.vertical-text>li.active>a,
	.vertical-text>li.active>a:hover,
	.vertical-text>li.active>a:focus {
  		border-bottom-color: transparent;
  		border-right-color: #ddd;
  		border-left-color: #ddd;
	}
	.vertical-text.tabs-left {
  		left: -50px;
	}
	.vertical-text.tabs-right {
  		right: -50px;
	}
	.vertical-text.tabs-right>li {
  		-webkit-transform: rotate(90deg);
  		-moz-transform: rotate(90deg);
  		-ms-transform: rotate(90deg);
  		-o-transform: rotate(90deg);
  		transform: rotate(90deg);
	}
	.vertical-text.tabs-left>li {
  		-webkit-transform: rotate(-90deg);
  		-moz-transform: rotate(-90deg);
  		-ms-transform: rotate(-90deg);
  		-o-transform: rotate(-90deg);
  		transform: rotate(-90deg);
	}
	.notActive{
    	color: #3276b1;
    	background-color: #fff;
	}
	
	.isDisabled {
  		color			: currentColor;
  		cursor			: not-allowed;
  		opacity			: 0.2;
  		text-decoration	: none;
  		pointer-events	: none;
	}
	
</style>
<script>
var ruta = obtenerContexto();
$(document).ready(function(){
	
	$('#chkfichaNotificacion').click(function(){
		if($("#chkfichaNotificacion").is(':checked')){  
			$("#tdFichaNotificacion").show();
        }else{
        	$("#tdFichaNotificacion").hide();
        }
	});
	
	$('#chkFichaLinea100').click(function(){
		if($("#chkFichaLinea100").is(':checked')){  
			$("#tdFichaLinea100").show();
        }else{
        	$("#tdFichaLinea100").hide();
        }
	});
    
	$('#chkFichaChat100').click(function(){
		if($("#chkFichaChat100").is(':checked')){  
			$("#tdFichaChat100").show();
        }else{
        	$("#tdFichaChat100").hide();
        }
	});
	
	$('#chkSAU').click(function(){
		if($("#chkSAU").is(':checked')){  
			$("#tdSAU").show();
			$("#tdSAU2").show();
        }else{
        	$("#tdSAU").hide();
        	$("#tdSAU2").hide();
        }
	});
	
	$('#chkCAI').click(function(){
		if($("#chkCAI").is(':checked')){  
			$("#tdCAI").show();
			$("#tdCAI2").show();
        }else{
        	$("#tdCAI").hide();
        	$("#tdCAI2").hide();
        }
	});
	
	$('#chkER').click(function(){
		if($("#chkER").is(':checked')){  
			$("#tdER").show();
			$("#tdER2").show();
        }else{
        	$("#tdER").hide();
        	$("#tdER2").hide();
        }
	});
	
	cargarDepartamento();
	cargarTipoViolencia();
	cargarVinculosFamiliares();
	
	$('#fecnac').datetimepicker({
		language		:  'es',
		format			: 'dd/mm/yyyy',
		pickerPosition	: "bottom-left",
		weekStart		: 1,
	    todayBtn		: 1,
		autoclose		: 1,
		todayHighlight	: 1,
		startView		: 2,
		minView			: 2,
		forceParse		: 0
    });
	
	$('#rdInformante a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdSexo a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdRedesFamiliares a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdNivelRiesgo a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdIntervencionDenuncia a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "S"){
	    	$("#rdDondeInterpusoDenuncia").removeClass("isDisabled");	
	    }else{
	    	$("#rdDondeInterpusoDenuncia").addClass("isDisabled");
	    	$("#valueDondeInterpusoDenuncia").val("");
	    }
	    
	})
	
	$('#rdDondeInterpusoDenuncia a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdFormularDenuncia a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdMedidasProteccion a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdMedidasCautelares a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	})
	
	$('#rdRecibirPatrocinio a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    console.log("sel [" + sel + "]");
	    if(sel == "S"){
	    	$("#descripcionRecibirPatrocinio").attr("disabled", true);
	    }else{
	    	$("#descripcionRecibirPatrocinio").attr("disabled", false);
	    	$("#descripcionRecibirPatrocinio").val("");
	    }
	})
	
});

function cargarDepartamento(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = "0";
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-ubigeo.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoUbigeo + ">" + val.nombre + "</option>";
    		});
    		
    		$("#departamento").html(selectUt);
            
        }
    });
    
}

function cargarProvincia(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = $("#departamento").val();
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-ubigeo.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoUbigeo + ">" + val.nombre + "</option>";
    		});
    		
    		$("#provincia").html(selectUt);
            
        }
    });
    
	
}

function cargarDistrito(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = $("#provincia").val();
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-ubigeo.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoUbigeo + ">" + val.nombre + "</option>";
    		});
    		
    		$("#distrito").html(selectUt);
            
        }
    });
        	
}

function cargarDistritoNulo(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = "";
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-ubigeo.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoUbigeo + ">" + val.nombre + "</option>";
    		});
    		
    		$("#distrito").html(selectUt);
            
        }
    });
        	
}

function cargarVinculosFamiliares(){
	
	$.ajax({
        type	: "GET",
        async	: false,
        url		: "listar-vinculos-familiares.json",
        cache 	: false,
        success	: function(result){
            
        	vinculos = "";
    		$.each(result.rows, function(key,val) {
    			vinculos += "<tr><td>"
    				vinculos += "<input type='checkbox' id='chk_va_" + val.codigoVinculosAfectivos + "'>&nbsp;" + val.descripcionVinculos;
    			vinculos += "</td></tr>"
    		});
    		
    		$("#tablaVinculosAfectivos").html(vinculos);
        }
    });
        	
}

function cargarTipoViolencia(){
	
	$.ajax({
        type	: "GET",
        async	: false,
        url		: "listar-tipo-violencia.json",
        cache 	: false,
        success	: function(result){
            
        	tipoViolencia = "<tr>";
        	riesgo = "<tr>"; 
    		$.each(result.rows, function(key,val) {
    			if(val.flagFactorRiesgo == 0){
	    			tipoViolencia += "<td valign='top' width='25%'>";
	    				tipoViolencia += "<table class='table table-bordered'>";
	    					tipoViolencia += "<thead><tr><td height='70px' align='center'><b>" + val.tipoViolencia + "</b></td></tr></thead>";
	    					tipoViolencia += "<tbody>";
			    			$.each(val.listViolencia, function(key2, val2) {
			    				tipoViolencia += "<tr>";
			    					tipoViolencia += "<td>";
			    						tipoViolencia += "<input type='checkbox' id='chk_" + val2.codigoViolencia + "'>&nbsp;" + val2.descripcionViolencia;
			    						if(val2.flagMensaje == 1){
			    							//tipoViolencia += "<button type='button' class='btn btn-lg btn-danger' data-toggle='popover' title='Mensaje' data-content='" + val2.mensaje + "'>A</button>";
			    							 
			    							tipoViolencia += "&nbsp;&nbsp;<a href='javascript:muestraMensaje(\"" + replaceAll(val2.mensaje, " ", "#") + "\", \"" + replaceAll(val2.descripcionViolencia, " ", "#") + "\");'><img src='/"+ruta+"/recursos/images/icons/info_24x24.png' border='0' /></a>";
	  
			    						}else{
			    							tipoViolencia += "&nbsp;";
			    						}
			    					tipoViolencia += "</td>";
			    				tipoViolencia += "</tr>";
			        		});
			    			tipoViolencia += "</tbody>";
	    				tipoViolencia += "</table>";
	    			tipoViolencia += "</td>";
    			}else{
    				riesgo += "<td valign='top' width='25%'>";
    					riesgo += "<table class='table table-bordered'>";
    						riesgo += "<thead><tr><td height='70px' align='center'><b>" + val.tipoViolencia + "</b></td></tr></thead>";
    						riesgo += "<tbody>";
		    				$.each(val.listViolencia, function(key2, val2) {
		    					riesgo += "<tr>";
		    						riesgo += "<td>";
		    							riesgo += "<input type='checkbox' id='chk_" + val2.codigoViolencia + "'>&nbsp;" + val2.descripcionViolencia;
		    							if(val2.flagMensaje == 1){
		    								//tipoViolencia += "<button type='button' class='btn btn-lg btn-danger' data-toggle='popover' title='Mensaje' data-content='" + val2.mensaje + "'>A</button>";
		    							 
		    								riesgo += "&nbsp;&nbsp;<a href='javascript:muestraMensaje(\"" + replaceAll(val2.mensaje, " ", "#") + "\", \"" + replaceAll(val2.descripcionViolencia, " ", "#") + "\");'><img src='/"+ruta+"/recursos/images/icons/info_24x24.png' border='0' /></a>";
  
		    							}else{
		    								riesgo += "&nbsp;";
		    							}
		    						riesgo += "</td>";
		    					riesgo += "</tr>";
		        			});
		    				riesgo += "</tbody>";
		    			riesgo += "</table>";
		    		riesgo += "</td>";
    			}
    		});
    		tipoViolencia += "</tr>";
    		riesgo += "</tr>";
    		
    		$("#tablaViolencia").html(tipoViolencia);
    		$("#tablaFactorRiesgo").html(riesgo);
    		
        }
    });
        	
}

function muestraMensaje(mensaje, titulo){
	//alert(mensaje);
	
	$('#exampleModal').modal('show');
	
	$('#tituloMensaje').html(replaceAll(titulo, "#", " "));
	$('#cuerpoMensaje').html(replaceAll(mensaje, "#", " "));
}

</script>
</head>
<body id="body">
<div class="container">

    <ul class="nav nav-tabs">
        <li class="nav active"><a href="#seccionA" data-toggle="tab">Sección A : Admisión</a></li>
        <li class="nav"><a href="#seccionB" data-toggle="tab">Sección B : Primera Entrevista</a></li>
        <li class="nav"><a href="#seccionC" data-toggle="tab">Sección C : Evaluación del Riesgo</a></li>
        <li class="nav"><a href="#seccionD" data-toggle="tab">Sección D : Patrocinio Legal</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane fade in active" id="seccionA">
        	<div id="seccionA" class="row" style="min-height:300px; ">
			    <div  class="col-md-12">
			        <h3>Sección A</h3>
			        <hr/>
			        <div class="col-xs-3">
			            <!-- required for floating -->
			            <!-- Nav tabs -->
			            <ul class="nav nav-tabs tabs-left">
			                <li class="active"><a href="#personaInformante" data-toggle="tab">I.Persona Informante</a></li>
			                <li><a href="#ingresoServicio" data-toggle="tab">II.Forma de Ingreso al Servicio</a></li>
			                <li><a href="#personaUsuaria" data-toggle="tab">III.Datos de la persona usuaria</a></li>
			                <li><a href="#personaAgresora" data-toggle="tab">IV.Datos de la presunta agresora</a></li>
			            </ul>
			        </div>
			        <div class="col-xs-9">
			            <!-- Tab panes -->
			            <div class="tab-content">
			                <div class="tab-pane active" id="personaInformante">
			                	<table border="0">
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>1.1 La persona informante es la misma persona usuaria?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdInformante" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueInformante" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueInformante" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueInformante" id="valueInformante">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>1.2 Datos de la persona informante</b>
										</td>
									</tr>
									<tr>			
										<td>
											<table border="0">
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblapepat">Apellido Paterno</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="apePaterno" class="form-control" maxlength="30" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblapemat">Apellido Materno</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="apeMaterno" class="form-control" maxlength="30" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblnombres">Nombres</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="nombres" class="form-control" maxlength="40" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblsexo">Fec.Nacimiento</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="fecnac" class="form_datetime form-control" ></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblsexo">Sexo</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td align="left">
														<div class="col-sm-9 col-md-9">
											    			<div class="input-group">
											    				<div id="rdSexo" class="btn-group">
											    					<a class="btn btn-primary btn-sm active" data-toggle="valueSexo" data-title="M">Masculino</a>
											    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueSexo" data-title="F">Femenino</a>
											    				</div>
											    				<input type="hidden" name="valueSexo" id="valueSexo">
											    			</div>
											    		</div>
													</td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldepartamento">Departamento</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><select id="departamento" class="form-control" onchange="cargarProvincia();cargarDistritoNulo();"></select></td>
													<td valign="top"><img id="lbldepartamento-img" src="recursos/images/icons/error_20x20.png" style="display:none;" border="0" data-toggle="popover" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblprovincia">Provincia</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><select id="provincia" class="form-control" onchange="cargarDistrito();"></select></td>
													<td valign="top"><img id="lblprovincia-img" src="recursos/images/icons/error_20x20.png" style="display:none;" border="0" data-toggle="popover" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldistrito">Distrito</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><select id="distrito" class="form-control"></select></td>
													<td valign="top"><img id="lbldistrito-img" src="recursos/images/icons/error_20x20.png" style="display:none;" border="0" data-toggle="popover" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldireccion">Dirección</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="direccion" class="form-control" maxlength="500" style="width:300px" /></td>
													<td valign="top"><img id="lbldireccion-img" src="recursos/images/icons/error_20x20.png" style="display:none;" border="0" data-toggle="popover" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblreferencia">Referencia</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="referencia" class="form-control" maxlength="500" style="width:300px" /></td>
													<td valign="top"><img id="lblreferencia-img" src="recursos/images/icons/error_20x20.png" style="display:none;" border="0" data-toggle="popover" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblcorreo">Correo</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="correo" class="form-control" maxlength="100" /></td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbltelefono">Teléfono</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="telefono" class="form-control" maxlength="9" /></td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
								</table>
			                </div>
			                <div class="tab-pane" id="ingresoServicio">
			                	<table border="0" width="100%">
						    		<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<table border=0>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldemandaEspontanea"><b>Demanda espontánea</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="checkbox" id="demandaEspontanea" class="form-check-input"/>&nbsp;Persona acude directamente al servicio</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="13"><hr/></td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldeteccionServicio"><b>Detección en servicio</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="checkbox" id="detaccionServicio" class="form-check-input"/>&nbsp;Persona acude al servicio por otro motivo</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="13"><hr/></td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldeteccionActividades"><b>Detección en actividades preventivas promocionales</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="checkbox" id="detaccionServicio" class="form-check-input"/>&nbsp;Personal del CEM deriva el caso</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="13"><hr/></td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldeteccionActividades"><b>Notificado por un tercero, <br/>institución Linea 100 o <br/>Chat 100</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td>
														<table border=0>
															<tr>
																<td><input type="checkbox" id="chkfichaNotificacion" class="form-check-input"/>&nbsp;Ficha de Notificación de Caso</td>
																<td id="tdFichaNotificacion" style="display:none; ">N° Ficha : <input type="text" id="fichaNotificacion" class="form-control"/></td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkFichaLinea100" class="form-check-input"/>&nbsp;Ficha de Derivación de Linea 100</td>
																<td id="tdFichaLinea100" style="display:none; ">N° Ficha : <input type="text" id="fichaLinea100" class="form-control"/></td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkFichaChat100" class="form-check-input"/>&nbsp;Ficha de Derivación de Chat 100</td>
																<td id="tdFichaChat100" style="display:none; ">N° Ficha : <input type="text" id="fichaChat100" class="form-control"/></td>
															</tr>
														</table>
													</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="13"><hr/></td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldeteccionActividades"><b>Derivado por la PNP, <br/>Ministerio Público o <br/>Poder Judicial</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td>
														<table border=0>
															<tr>
																<td><input type="checkbox" id="chkderivadoPNP" class="form-check-input"/>&nbsp;Derivado por la PNP</td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkderivadoMinisterioPublico" class="form-check-input"/>&nbsp;Derivado por el Ministerio Público</td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkderivadoPoderJudicial" class="form-check-input"/>&nbsp;Derivado por el Poder Judicial</td>
															</tr>
														</table>
													</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="13"><hr/></td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lbldeteccionActividades"><b>Derivado por el SAU, <br/>CAI o <br/>Estrategia Rural</b></span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td>
														<table border=0>
															<tr>
																<td><input type="checkbox" id="chkSAU" class="form-check-input"/>&nbsp;Servicio de Atención Urgente (SAU)</td>
																<td id="tdSAU" style="display:none; ">Sede del SAU : <input type="text" id="sedeSAU" class="form-control"/></td>
																<td id="tdSAU2" style="display:none; ">N° Ficha : <input type="text" id="fichaSAU" class="form-control"/></td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkCAI" class="form-check-input"/>&nbsp;Centro de Atención Institucional (CAI)</td>
																<td id="tdCAI" style="display:none; ">Nombre del CAI : <input type="text" id="nombreCAI" class="form-control"/></td>
																<td id="tdCAI2" style="display:none; ">N° Ficha : <input type="text" id="fichaCAI" class="form-control"/></td>
															</tr>
															<tr>
																<td><input type="checkbox" id="chkER" class="form-check-input"/>&nbsp;Estrategia Rural (ER)</td>
																<td id="tdER" style="display:none; ">Nombre de la ER : <input type="text" id="nombreER" class="form-control"/></td>
																<td id="tdER2" style="display:none; ">N° Ficha : <input type="text" id="fichaER" class="form-control"/></td>
															</tr>
														</table>
													</td>
													<td valign="top">&nbsp;</td>
													<td colspan="6">&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
								</table>
			                </div>
			                <div class="tab-pane" id="personaUsuaria">Persona usuaria</div>
			                <div class="tab-pane" id="personaAgresora">Persona Agresora</div>
			            </div>
			        </div>
			        <div class="clearfix"></div>
			    </div>
			</div>
        </div>
        
        <div class="tab-pane fade" id="seccionB">
        	<div id="seccionB" class="row" style="min-height:300px; ">
			    <div  class="col-md-12">
			        <h3>Sección B</h3>
			        <hr/>
			        <div class="col-xs-3">
			            <!-- required for floating -->
			            <!-- Nav tabs -->
			            <ul class="nav nav-tabs tabs-left">
			                <li class="active"><a href="#motivoConsulta" data-toggle="tab">I.Motivo de Consulta</a></li>
			                <li><a href="#tipoViolencia" data-toggle="tab">II.Tipo de Violencia</a></li>
			                <li><a href="#antecedentesViolencia" data-toggle="tab">III.Antecedentes de Violencia</a></li>
			                <li><a href="#apreciacionProfesional" data-toggle="tab">IV.Apreciación Profesional del Servicio</a></li>
			            </ul>
			        </div>
			        <div class="col-xs-9">
			            <!-- Tab panes -->
			            <div class="tab-content">
			                <div class="tab-pane active" id="motivoConsulta">
			                	<table border="0" width="100%">
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>(Persona del último hecho de violencia)</b>
										</td>
									</tr>
									<tr>			
										<td>
											<textarea rows="4" cols="50" id="descripcionMotivoConsulta" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
								</table>
			                </div>
			                <div class="tab-pane" id="tipoViolencia">
			                	<table border="0" id="tablaViolencia">
			                	</table>
			                </div>
			                <div class="tab-pane" id="antecedentesViolencia">Antecedentes de Violencia</div>
			                <div class="tab-pane" id="apreciacionProfesional">
			                	<table border="0" width="100%">
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>(Registrado exclusivamente por el servicio de psicología) </b><br />(Incluir los indicadores que evidencian el hecho de violencia) 
										</td>
									</tr>
									<tr>			
										<td>
											<textarea rows="4" cols="50" id="descripcionApreciacionProfesional" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
									</tr>
								</table>
			                </div>
			            </div>
			        </div>
			        <div class="clearfix"></div>
			    </div>
			</div>
        </div>
        
        <div class="tab-pane fade" id="seccionC">
        	<div id="seccionC" class="row" style="min-height:300px; ">
			    <div  class="col-md-12">
			        <h3>Sección C</h3>
			        <hr/>
			        <div class="col-xs-3">
			            <!-- required for floating -->
			            <!-- Nav tabs -->
			            <ul class="nav nav-tabs tabs-left">
			                <li class="active"><a href="#factoresProtectores" data-toggle="tab">I.Factores protectores de la persona usuaria</a></li>
			                <li><a href="#factoresRiesgo" data-toggle="tab">II.Factores de riesgo de la violencia</a></li>
			                <li><a href="#nivelRiesgo" data-toggle="tab">III.Nivel de riesgo para la integridad o la vida de la persona usuaria</a></li>
			                <li><a href="#estrategiaAfrontamiento" data-toggle="tab">IV.Estrategia de afrontamiento</a></li>
			                <li><a href="#apreciacionProfesional2" data-toggle="tab">V.Apreciación profesional de servicio social y acciones inmediatas</a></li>
			            </ul>
			        </div>
			        <div class="col-xs-9">
			            <!-- Tab panes -->
			            <div class="tab-content">
			                <div class="tab-pane active" id="factoresProtectores">
			                	<table border="0">
			                		<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>1.1 Vinculos afectivos positivos de la persona usuaria(Respuesta Múltiple)</b>
										</td>
									</tr>
									<tr>			
										<td>
											<table border="0" id="tablaVinculosAfectivos" class='table table-bordered'>
			                				</table>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>1.2 Cuenta con redes familiares o sociales?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdRedesFamiliares" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueRedesFamiliares" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueRedesFamiliares" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueRedesFamiliares" id="valueRedesFamiliares">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
								</table>
			                </div>
			                <div class="tab-pane" id="factoresRiesgo">
			                	<table border="0" id="tablaFactorRiesgo">
			                	</table>
			                </div>
			                <div class="tab-pane" id="nivelRiesgo">
			                	<div class="col-sm-9 col-md-9">
					    			<div class="input-group">
					    				<div id="rdNivelRiesgo" class="btn-group">
					    					<a class="btn btn-primary btn-sm active" data-toggle="valueNivelRiesgo" data-title="RL">Riesgo Leve</a>
					    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueNivelRiesgo" data-title="RM">Riesgo Moderado</a>
					    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueNivelRiesgo" data-title="RS">Riesgo Severo</a>
					    				</div>
					    				<input type="hidden" name="valueNivelRiesgo" id="valueNivelRiesgo">
					    			</div>
					    		</div>
			                </div>
			                <div class="tab-pane" id="estrategiaAfrontamiento">
			                	<table border="0">
			                		<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.1 La persona usuaria ha interpuesto denuncia por el último hecho de violencia, antes de la intervención del CEM?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdIntervencionDenuncia" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueIntervencionDenuncia" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueIntervencionDenuncia" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueIntervencionDenuncia" id="valueIntervencionDenuncia">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.1.1 Donde interpuso la denuncia?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdDondeInterpusoDenuncia" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueDondeInterpusoDenuncia" data-title="Comisaria">Comisaria</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueDondeInterpusoDenuncia" data-title="Fiscalia">Fiscalia</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueDondeInterpusoDenuncia" data-title="Juzgado">Juzgado</a>
								    				</div>
								    				<input type="hidden" name="valueDondeInterpusoDenuncia" id="valueDondeInterpusoDenuncia">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.1.2 Desea formular denuncia?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdFormularDenuncia" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueFormularDenuncia" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueFormularDenuncia" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueFormularDenuncia" id="valueFormularDenuncia">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.2 La persona usuaria cuenta con las medidas de protección por el último hecho de violencia, antes de la intervención del CEM?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdMedidasProteccion" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueMedidasProteccion" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueMedidasProteccion" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueMedidasProteccion" id="valueMedidasProteccion">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.3 La persona usuaria cuenta con las medidas cautelares por el último hecho de violencia, antes de la intervención del CEM?</b>
										</td>
									</tr>
									<tr>			
										<td>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdMedidasCautelares" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueMedidasCautelares" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueMedidasCautelares" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueMedidasCautelares" id="valueMedidasCautelares">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>4.4 Está interesado/a en recibir patrocinio legal del CEM por el último hecho de violencia :</b>
											<div class="col-sm-7 col-md-7">
								    			<div class="input-group">
								    				<div id="rdRecibirPatrocinio" class="btn-group">
								    					<a class="btn btn-primary btn-sm active" data-toggle="valueRecibirPatrocinio" data-title="S">SI</a>
								    					<a class="btn btn-primary btn-sm notActive" data-toggle="valueRecibirPatrocinio" data-title="N">NO</a>
								    				</div>
								    				<input type="hidden" name="valueRecibirPatrocinio" id="valueRecibirPatrocinio">
								    			</div>
								    		</div>
										</td>
									</tr>
									<tr>
										<td>
											<textarea rows="4" cols="50" id="descripcionRecibirPatrocinio" class="form-control" maxlength="4000" style="text-transform: uppercase;" disabled ></textarea>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
								</table>
			                </div>
			                <div class="tab-pane" id="apreciacionProfesional2">
			                	<table border="0">
			                		<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>(Registrado excclusivamente por el servicio social)</b>(Descripción de las competencias, destrezas de protección y recursos institucionales que cuenta la persona usuaria, además indicar las acciones inmediatas)
										</td>
									</tr>
									<tr>
										<td>
											<textarea rows="4" cols="50" id="descripcionRecibirPatrocinio" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
									<tr>			
										<td>
											<b>Datos del/de profesional</b>
										</td>
									</tr>
									<tr>
										<td>
											<table border="0">
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblapepatProfesional">Apellido Paterno</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="apePaternoProfesional" class="form-control" maxlength="30" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblapematProfesional">Apellido Materno</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="apeMaternoProfesional" class="form-control" maxlength="30" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
												<tr>
													<td width="10px">&nbsp;</td>
													<td><span id="lblnombresProfesional">Nombres</span></td>
													<td width="5px">&nbsp;</td>
													<td><b>:</b></td>
													<td width="5px">&nbsp;</td>
													<td><input type="text" id="nombresProfesional" class="form-control" maxlength="40" /></td>
													<td colspan="7">&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
											<b>&nbsp;</b>
										</td>
									</tr>
								</table>
			                </div>			                
			            </div>
			        </div>
			        <div class="clearfix"></div>
			    </div>
			</div>
        </div>
        
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
        		<h5 class="modal-title" id="exampleModalLabel"><b><span id="tituloMensaje" /></b></h5>
      		</div>
      		<div class="modal-body">
        		<h5 class="modal-title" id="exampleModalLabel"><span id="cuerpoMensaje" /></h5>
      		</div>
      		<div class="modal-footer">
        		<button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
      		</div>
    	</div>
  	</div>
</div>
</body>
</html>
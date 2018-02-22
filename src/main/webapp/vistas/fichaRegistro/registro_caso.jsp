<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<style>
.notActive{
   	color: #3276b1;
   	background-color: #fff;
}
</style>
<script>
var ruta = obtenerContexto();
$(document).ready(function(){
	
	cargarTipoViolencia();
	
	$('#fechaOcurrido').datetimepicker({
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
	
	$('#fechaIntervencion').datetimepicker({
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
	
	$('#fechaOficio').datetimepicker({
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
	
	$('#rdTipoCaso a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdServicioAtiende a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdDerivadoPor a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdNivelRiesgo a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdRecompensaMininter a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdOficioMininter a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "SI"){
	    	$("#fechaOficioMininter").show();
	    }else{
	    	$("#fechaOficioMininter").hide();
	    }
	    
	});
	
	$('#rdProcesoJudicial a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	});
	
	$('#rdViolenciaConDenuncia a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "SI"){
	    	$("#ViolenciaConDenunciaSi").show();
	    }else{
	    	$("#ViolenciaConDenunciaSi").hide();
	    }
	    
	});
	
	$('#rdViolenciaConDenunciaSi a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "JUDICIAL"){
	    	$("#ViolenciaConDenunciaJudicial").show();
	    }else{
	    	$("#ViolenciaConDenunciaJudicial").hide();
	    }
	    
	});
	
	$('#rdSituacionLegal a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "DETENIDO"){
	    	$("#SituacionLegalDetenido").show();
	    }else{
	    	$("#SituacionLegalDetenido").hide();
	    }
	    
	});
	
	$('#rdSituacionLegalDetenido a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	});
	
	$('#rdTipoEmergencia a').on('click', function(){
	    var sel = $(this).data('title');
	    var tog = $(this).data('toggle');
	    $('#'+tog).prop('value', sel);
	    
	    $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
	    $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
	    
	    if(sel == "CEM_LOCAL"){
	    	cargarCentrosEmergenciaCemLocal();
	    	$("#divCemLocal").show();
	    	$("#divCemComisaria").hide();
	    	$("#divSau").hide();
	    }else{
	    	if(sel == "CEM_COMISARIA"){
	    		cargarCentrosEmergenciaCemComisaria();
	    		$("#divCemLocal").hide();
		    	$("#divCemComisaria").show();
		    	$("#divSau").hide();
	    	}else{
	    		cargarCentrosEmergenciaCemSau();
	    		$("#divCemLocal").hide();
		    	$("#divCemComisaria").hide();
		    	$("#divSau").show();
	    	}
	    	
	    }
	    
	});
	
	$('#btnNuevo').on('click', function(){
		
		limpiarNuevoImplicado();
		$('#implicadoModal').modal('show');
		
	});
	
	$('#btnAgregar').on('click', function(){
		
		fila = "<tr>";
	   	fila += "<td>" + $("#cboImplicado option:selected").html().toUpperCase() + "</td>";
	   	fila += "<td>" + $('#apellidoPaterno').val().toUpperCase() + "</td>";
	   	fila += "<td>" + $('#apellidoMaterno').val().toUpperCase() + "</td>";
	   	fila += "<td>" + $('#nombres').val().toUpperCase() + "</td>";
	   	fila += "<td>" + $('#nacionalidad').val().toUpperCase() + "</td>";
	   	fila += "<td>" + $('#dni').val().toUpperCase() + "</td>";
	   	//fila += "<td>" + "<input type='button' value='Eliminar' onclick='eliminarFila(this);'>" + "</td>";
	   	fila += "<td align='center'>" + "<button type='button' class='boton' onclick='eliminarFila(this);'>"
	   	fila += "<img src='/"+ruta+"/recursos/images/icons/eliminar_24x24.png' border='0' />";
	   	fila += "</button></td>";
	   	fila += "</tr>";
		
	   	$("#tblImplicados tbody").append(fila);
	   	
		$('#implicadoModal').modal('hide');
		
	});
	
	cargarDepartamento();
	
});

function eliminarFila(t){
	var td = t.parentNode;
	var tr = td.parentNode;
	var table = tr.parentNode;
	table.removeChild(tr);
}

function limpiarNuevoImplicado(){
	
	$('#apellidoPaterno').val("");
   	$('#apellidoNaterno').val("");
   	$('#nombres').val("");
   	$('#nacionalidad').val("");
   	$('#dni').val("");
   	
}

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
	
	$("#divCemLocal").hide();
    $("#divCemComisaria").hide();
    $("#divSau").hide();
    
    $('a[data-toggle="' + "valueTipoEmergencia" + '"]').not('[data-title="' + "CEM_LOCAL" + '"]').removeClass('active').addClass('notActive');
    $('a[data-toggle="' + "valueTipoEmergencia" + '"]').not('[data-title="' + "CEM_COMISARIA" + '"]').removeClass('active').addClass('notActive');
    $('a[data-toggle="' + "valueTipoEmergencia" + '"]').not('[data-title="' + "SAU" + '"]').removeClass('active').addClass('notActive');
    
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

function cargarCentrosEmergenciaCemLocal(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = $("#departamento").val();
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-cem-local.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoCem + ">" + val.nombreCem + "</option>";
    		});
    		
    		$("#cemLocal").html(selectUt);
            
        }
    });
    
}

function cargarCentrosEmergenciaCemComisaria(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = $("#departamento").val();
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-cem-comisaria.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoCem + ">" + val.nombreCem + "</option>";
    		});
    		
    		$("#cemComisaria").html(selectUt);
            
        }
    });
    
}

function cargarCentrosEmergenciaCemSau(){
	
	var parametros = new Object();
	parametros.codigoUbigeo = $("#departamento").val();
	
	$.ajax({
        type	: "POST",
        async	: false,
        url		: "listar-cem-sau.json",
        cache 	: false,
        data	: parametros,
        success	: function(result){
            
        	selectUt = "<option value=0>SELECCIONAR</option>";
    		$.each(result.rows, function(key,val) {
    			selectUt += "<option value=" + val.codigoCem + ">" + val.nombreCem + "</option>";
    		});
    		
    		$("#sau").html(selectUt);
            
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
        	antecedentes = "<tr>";
        	$.each(result.rows, function(key,val) {
    			if(val.flagFactorRiesgo == 1){
	    			tipoViolencia += "<td valign='top' width='25%'>";
	    				tipoViolencia += "<table class='table table-bordered'>";
	    					tipoViolencia += "<thead><tr><td height='70px' align='center'><b>" + val.tipoViolencia + "</b></td></tr></thead>";
	    					tipoViolencia += "<tbody>";
			    			$.each(val.listViolencia, function(key2, val2) {
			    				tipoViolencia += "<tr>";
			    					tipoViolencia += "<td>";
			    						tipoViolencia += "<input type='radio' name='rdViolencia' id='rd_" + val2.codigoViolencia + "'>&nbsp;" + val2.descripcionViolencia;
			    						if(val2.flagMensaje == 1){
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
					antecedentes += "<td valign='top' width='25%'>";
    					antecedentes += "<table class='table table-bordered'>";
    						antecedentes += "<thead><tr><td height='70px' align='center'><b>" + val.tipoViolencia + "</b></td></tr></thead>";
    						antecedentes += "<tbody>";
		    				$.each(val.listViolencia, function(key2, val2) {
		    					antecedentes += "<tr>";
		    						antecedentes += "<td>";
		    							antecedentes += "<input type='radio' name='rdAntecedentes' id='rd_" + val2.codigoViolencia + "'>&nbsp;" + val2.descripcionViolencia;
		    							if(val2.flagMensaje == 1){
		    								antecedentes += "&nbsp;&nbsp;<a href='javascript:muestraMensaje(\"" + replaceAll(val2.mensaje, " ", "#") + "\", \"" + replaceAll(val2.descripcionViolencia, " ", "#") + "\");'><img src='/"+ruta+"/recursos/images/icons/info_24x24.png' border='0' /></a>";
		    							}else{
		    								antecedentes += "&nbsp;";
		    							}
		    						antecedentes += "</td>";
		    					antecedentes += "</tr>";
		        			});
		    				antecedentes += "<tr>";
		    				antecedentes += "<td align='center'>";
		    				antecedentes += "<input type='button' name='btnAdjuntar_" + val.tipoViolencia + "' id='btnAdjuntar_" + val.tipoViolencia + "' value='Adjuntar Resolución' class='btn btn-primary' />";
		    	    		antecedentes += "</td>";
		    	    		antecedentes += "</tr>";
		    				antecedentes += "</tbody>";
		    			antecedentes += "</table>";
		    		antecedentes += "</td>";
    			}
    		});
    		tipoViolencia += "</tr>";
    		antecedentes += "</tr>";
    		
    		$("#tblViolenciaConDenunciaJudicial").html(antecedentes);
    		$("#tblTipoViolencia").html(tipoViolencia);
    		
        }
    });
        	
}

function muestraMensaje(mensaje, titulo){
	//alert(mensaje);
	
	$('#mensajeModal').modal('show');
	
	$('#tituloMensaje').html(replaceAll(titulo, "#", " "));
	$('#cuerpoMensaje').html(replaceAll(mensaje, "#", " "));
}

</script>
</head>
<body id="body">
<div class="container">

    <ul class="nav nav-tabs">
        <li class="nav active"><a href="#informacionGeneral" data-toggle="tab">Información General</a></li>
        <li class="nav"><a href="#partesImplicadas" data-toggle="tab">Partes Implicadas</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        
        <div class="tab-pane fade in active" id="informacionGeneral">
        	<div id="informacionGeneral" class="row" style="min-height:300px; ">
			    <div  class="col-md-12">
			        <h3>Información General</h3>
			        <hr/>
			        <div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Tipo de Caso :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdTipoCaso" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueTipoCaso" data-title="MEDIATICO">Mediático</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueTipoCaso" data-title="EMBLEMATICO">Emblemático</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueTipoCaso" data-title="URGENTE_AD">Urgentes para la AD</a>
				    			</div>
				    			<input type="hidden" name="valueTipoCaso" id="valueTipoCaso">
				    		</div>
				        </div>
				    </div>   
			        <div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Servicio que atiende :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdServicioAtiende" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueServicioAtiende" data-title="CEM">CEM</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueServicioAtiende" data-title="SAU">SAU</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueServicioAtiende" data-title="ER">ER</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueServicioAtiende" data-title="LINEA100">Línea 100</a>
				    			</div>
				    			<input type="hidden" name="valueServicioAtiende" id="valueServicioAtiende">
				    		</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Caso derivado por :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdDerivadoPor" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueDerivadoPor" data-title="DM">DM</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="DVMM">DVMM</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="DVPV">DVPV</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="SG">SG</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="CONGRESO">Congreso</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="DE-PNCVFS">DE-PNCVFS</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueDerivadoPor" data-title="PRENSA">Prensa</a>
				    			</div>
				    			<input type="hidden" name="valueDerivadoPor" id="valueDerivadoPor">
				    		</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Fecha de ocurrido el hecho :</b>
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="fechaOcurrido" class="form_datetime form-control" style="width: 100px" >
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Fecha de inicio de intervención :</b>
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="fechaIntervencion" class="form_datetime form-control" style="width: 100px" >
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Sumilla del caso(descripción breve) :</b>
				        </div>
				        <div class="col-sm-9">
				            <textarea rows="4" cols="50" id="descripcionSumillaCaso" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Tipo de violencia :</b>
				        </div>
				        <div class="col-sm-9">
				            <table class="table table-bordered" id="tblTipoViolencia">
							</table>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Antecedentes del caso :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Proceso Judicial :
						        </div>
						        <div class="col-sm-9">
						            <div class="input-group">
						    			<div id="rdProcesoJudicial" class="btn-group">
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueProcesoJudicial" data-title="SI">SI</a>
						    				<a class="btn btn-primary btn-sm active" data-toggle="valueProcesoJudicial" data-title="NO">NO</a>
						    			</div>
						    			<input type="hidden" name="valueProcesoJudicial" id="valueProcesoJudicial">
						    		</div>
						        </div>
				        	</div>
				        	<div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Violencia con denuncia :
						        </div>
						        <div class="col-sm-9">
						            <div class="input-group">
						    			<div id="rdViolenciaConDenuncia" class="btn-group">
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueViolenciaConDenuncia" data-title="SI">SI</a>
						    				<a class="btn btn-primary btn-sm active" data-toggle="valueViolenciaConDenuncia" data-title="NO">NO</a>
						    			</div>
						    			<input type="hidden" name="valueViolenciaConDenuncia" id="valueViolenciaConDenuncia">
						    		</div>
						        </div>
				        	</div>
				        	<div class="row" id="ViolenciaConDenunciaSi" style="display:none; ">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            
						        </div>
						        <div class="col-sm-9">
						            <div class="input-group">
						    			<div id="rdViolenciaConDenunciaSi" class="btn-group">
						    				<a class="btn btn-primary btn-sm active" data-toggle="valueViolenciaConDenunciaSi" data-title="POLICIAL">Policial</a>
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueViolenciaConDenunciaSi" data-title="FISCAL">Fiscal</a>
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueViolenciaConDenunciaSi" data-title="JUDICIAL">Judicial</a>
						    			</div>
						    			<input type="hidden" name="valueViolenciaConDenunciaSi" id="valueViolenciaConDenunciaSi">
						    		</div>
						        </div>
				        	</div>
				        	<div class="row" id="ViolenciaConDenunciaJudicial" style="display:none; ">
					        	<div class="col-sm-9">
						            <table class="table table-bordered" id="tblViolenciaConDenunciaJudicial">
								    </table>
						        </div>
						    </div>   
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Ubicación :</b>
				        </div>
				        <div class="col-sm-9">
				        	<div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Departamento :
						        </div>
						        <div class="col-sm-9">
						            <select id="departamento" class="form-control" onchange="cargarProvincia();cargarDistritoNulo();"></select>
						        </div>
				        	</div>
				        	<div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Provincia :
						        </div>
						        <div class="col-sm-9">
						            <select id="provincia" class="form-control" onchange="cargarDistrito();"></select>
						        </div>
				        	</div>
				        	<div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Distrito :
						        </div>
						        <div class="col-sm-9">
						            <select id="distrito" class="form-control"></select>
						        </div>
				        	</div>
				        	<div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Tipo Emergencia :
						        </div>
						        <div class="col-sm-9">
						          	<div class="input-group">
						    			<div id="rdTipoEmergencia" class="btn-group">
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueTipoEmergencia" data-title="CEM_LOCAL">CEM Local</a>
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueTipoEmergencia" data-title="CEM_COMISARIA">CEM Comisaria</a>
						    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueTipoEmergencia" data-title="SAU">SAU</a>
						    			</div>
						    			<input type="hidden" name="valueTipoEmergencia" id="valueTipoEmergencia">
						    		</div>  
						        </div>
				        	</div>
				        	<div class="row" id="divCemLocal" style="display:none; ">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            CEM Local :
						        </div>
						        <div class="col-sm-9">
						            <select id="cemLocal" class="form-control"></select>
						        </div>
				        	</div>
				        	<div class="row" id="divCemComisaria" style="display:none; ">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            CEM Comisaria :
						        </div>
						        <div class="col-sm-9">
						            <select id="cemComisaria" class="form-control" ></select>
						        </div>
				        	</div>
				        	<div class="row" id="divSau" style="display:none; ">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            SAU :
						        </div>
						        <div class="col-sm-9">
						            <select id="sau" class="form-control" ></select>
						        </div>
				        	</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Fiscalía a cargo de la investigación :</b>
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="fiscalia" class="form-control" maxlength="300" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Juzgado a cargo del proceso :</b>
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="juzgado" class="form-control" maxlength="300" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Situación legal del agresor/a :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdSituacionLegal" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueSituacionLegal" data-title="INVESTIGADO">Investigado</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegal" data-title="DETENIDO">Detenido</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegal" data-title="LIBERTAD">Libertad</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegal" data-title="NOHABIDO">No habido</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegal" data-title="RQ">RQ</a>
				    			</div>
				    			<input type="hidden" name="valueSituacionLegal" id="valueSituacionLegal">
				    		</div>
				        </div>
					</div>
					<div class="row" id="SituacionLegalDetenido" style="display:none; ">
				        <div class="col-sm-3" style="min-height:50px; ">
				            
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdSituacionLegalDetenido" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueSituacionLegalDetenido" data-title="INVESTIGADO">Flagrancia</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegalDetenido" data-title="DETENCION">Detención Preliminar</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegalDetenido" data-title="PRISION_PREVENTIVA">Prisión Preventiva</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegalDetenido" data-title="COMISARIA">Comisaria</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegalDetenido" data-title="FISCALIA">Fiscalia</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueSituacionLegalDetenido" data-title="PENAL">Penal</a>
				    			</div>
				    			<input type="hidden" name="valueSituacionLegalDetenido" id="valueSituacionLegalDetenido">
				    		</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Nivel de riesgo :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdNivelRiesgo" class="btn-group">
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueNivelRiesgo" data-title="ALTO">Alto</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueNivelRiesgo" data-title="MODERADO">Moderado</a>
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueNivelRiesgo" data-title="LEVE">Leve</a>
				    			</div>
				    			<input type="hidden" name="valueNivelRiesgo" id="valueNivelRiesgo">
				    		</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>Incluído/a en Programa de Recompensas del MININTER :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdRecompensaMininter" class="btn-group">
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueRecompensaMininter" data-title="SI">SI</a>
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueRecompensaMininter" data-title="NO">NO</a>
				    			</div>
				    			<input type="hidden" name="valueRecompensaMininter" id="valueRecompensaMininter">
				    		</div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            <b>MIMP remitió oficio a MININTER :</b>
				        </div>
				        <div class="col-sm-9">
				            <div class="input-group">
				    			<div id="rdOficioMininter" class="btn-group">
				    				<a class="btn btn-primary btn-sm notActive" data-toggle="valueOficioMininter" data-title="SI">SI</a>
				    				<a class="btn btn-primary btn-sm active" data-toggle="valueOficioMininter" data-title="NO">NO</a>
				    			</div>
				    			<input type="hidden" name="valueOficioMininter" id="valueOficioMininter">
				    		</div>
				        </div>
					</div>
					<div class="row" id="fechaOficioMininter" style="display:none; ">
				        <div class="col-sm-2" style="min-height:50px; ">
				            
				        </div>
				        <div class="col-sm-9">
				            <div class="row">
				        		<div class="col-sm-2" style="min-height:50px; ">
						            Fecha :
						        </div>
						        <div class="col-sm-9">
						            <input type="text" id="fechaOficio" class="form_datetime form-control" style="width: 100px" >
						        </div>
				        	</div>
				        </div>
					</div>
			    </div>
			</div>
        </div>
        
        <div class="tab-pane fade" id="partesImplicadas">
        	<div id="partesImplicadas" class="row" style="min-height:300px; ">
			    <div  class="col-md-12">
			        <h3>Partes Implicadas</h3>
			        <hr/>
			        <div class="row">
			        	<div class="col-sm-9" style="min-height:50px; ">
				            <input type="button" name="btnAgregar" id="btnNuevo" value="Nuevo" class="btn btn-primary" />
				        </div>
				    </div>
			        <div class="row">
			        	<div class="col-sm-9">
				            <table class="table table-bordered" id="tblImplicados">
						    <thead>
						      <tr>
						      	<th align="center">Implicado</th>
						        <th align="center">Apellido Paterno</th>
						        <th align="center">Apellido Materno</th>
						        <th align="center">Nombres</th>
						        <th align="center">Nacionalidad</th>
						        <th align="center">DNI/CE</th>
						        <th align="center">Acción</th>
						      </tr>
						    </thead>
						    <tbody>
						      
						    </tbody>
						  </table>
				        </div>
				    </div>   
			        
			    </div>
			</div>
        </div>
        
    </div>
</div>

<div class="modal fade" id="implicadoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
        		<h5 class="modal-title" id="exampleModalLabel"><b>Nuevo Implicado</b></h5>
      		</div>
      		<div class="modal-body">
        		<h5 class="modal-title" id="exampleModalLabel">
        			<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            Implicado :
				        </div>
				        <div class="col-sm-9">
				            <select id="cboImplicado" class="form-control">
				            	<option value="0">Seleccionar</option>
				            	<option value="AGRAVIADO">Agraviada/o</option>
				            	<option value="AGRESOR">Agresor/a</option>
				            	<option value="HIJOS">Hijos/as</option>
				            	<option value="ABUELOS">Abuelas/os</option>
				            	<option value="MADRE">Madre</option>
				            	<option value="PADRE">Padre</option>
				            	<option value="OTROS">Otros</option>
				            </select>
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            Apellido Paterno :
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="apellidoPaterno" class="form-control" maxlength="30" style="text-transform: uppercase;" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            Apellido Materno :
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="apellidoMaterno" class="form-control" maxlength="30" style="text-transform: uppercase;" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            Nombres :
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="nombres" class="form-control" maxlength="40" style="text-transform: uppercase;" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            Nacionalidad :
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="nacionalidad" class="form-control" maxlength="100" style="text-transform: uppercase;" />
				        </div>
					</div>
					<div class="row">
				        <div class="col-sm-3" style="min-height:50px; ">
				            DNI/CE :
				        </div>
				        <div class="col-sm-9">
				            <input type="text" id="dni" class="form-control" maxlength="15" style="text-transform: uppercase;" />
				        </div>
					</div>
        		</h5>
      		</div>
      		<div class="modal-footer">
      			<button type="button" class="btn" data-dismiss="modal">Cerrar</button>
      			<button type="button" class="btn btn-primary" id="btnAgregar">Agregar</button>
      		</div>
    	</div>
  	</div>
</div>

<div class="modal fade" id="mensajeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
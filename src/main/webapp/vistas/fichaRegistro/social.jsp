<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<script>
var ruta = obtenerContexto();
$(document).ready(function(){
	
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
	
	$('#fileAdjuntarSocial').on('file1', function(event, resultado){ // Agregamos el evento al div que escuchará
		
		//console.log("Inicio 2");
		//console.log('Nombre archivo real : ' + resultado.nombreArchivo);
	    //console.log('Nombre archivo modificado : ' + resultado.nombreArchivo.replace(/\\/g, '/').replace(/.*\//, ''));
	    
		$("#nombreAdjuntarSocial").val(resultado.nombreArchivo);
	    
	});
	 
	$('#fileAdjuntarSocial').on('change', function(ev){
		
		//console.log("Inicio 1");
		
	    $('#fileAdjuntarSocial').trigger('file1', { // Lanzamos el evento y pasamos un objeto como parametro (puede ser tambien un array).
	        nombreArchivo : ev.target.value
	    });
		
	});
	
});

function borrarNombreArchivo(archivo){
	$("#" + archivo).val("");
}

</script>
</head>
<body id="body">
<div class="container">

	<div class="row">
    	<div class="col-sm-2" style="min-height:50px; ">
        	<b>Fecha :</b>
       	</div>
       	<div class="col-sm-9">
        	<input type="text" id="fechaIntervencion" class="form_datetime form-control" style="width: 100px" >
       	</div>
	</div>   
	<div class="row">
		<div class="col-sm-2" style="min-height:100px; ">
			<b>Intervención :</b>
		</div>
		<div class="col-sm-9">
			<textarea rows="4" cols="50" id="descripcionIntervencion" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2" style="min-height:100px; ">
			<b>Resultado :</b>
		</div>
		<div class="col-sm-9">
			<textarea rows="4" cols="50" id="descripcionResultado" class="form-control" maxlength="4000" style="text-transform: uppercase;"></textarea>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2" style="min-height:100px; ">
			<b>Archivo :</b>
		</div>
		<div class="col-sm-9">
			<div class="input-group">
                <label class="input-group-btn">
                    <span class="btn btn-primary">
                        Adjuntar <input type="file" name='fileAdjuntarSocial' id='fileAdjuntarSocial' style="display: none;" >
                    </span>
                </label>
                <input type="text" id="nombreAdjuntarSocial" placeholder='Elegir un archivo ...' class="form-control" readonly />
                <label class="input-group-btn">
                    <span class="btn btn-default">
                        <img src="recursos/images/icons/eliminar_16x16.png" alt="Eliminar" onclick="borrarNombreArchivo('nombreAdjuntarSocial');"/>
                    </span>
                </label>
            </div>
		</div>
	</div>
	
</div>		
</body>
</html>
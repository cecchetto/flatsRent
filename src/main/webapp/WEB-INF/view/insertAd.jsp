<!doctype html>
<html>

<head>
<title>Miele Servizi Immobiliari</title>
<meta name="viewport" content="width=device-width">

<link href="css/plum-portfolio.css" rel="stylesheet">
<link rel="stylesheet" href="css/fileinput.css" type="text/css">
<link rel="stylesheet" href="css/slider.css" type="text/css">
<link rel="stylesheet" href="css/fileinput.min.css" type="text/css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"
	type="text/javascript"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="js/bootstrap-slider.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/fileinput.js" type="text/javascript"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
body {
	padding-bottom: 60px;
}
</style>

</head>

<body>

	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".header-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="font-weight: bold;"><img
					src="img/mieleLogo.gif" height="30" width="30">iele</a>
				<h6 style="font-weight: bold;">Studio Tecnico Immobiliare</h6>
			</div>

			<div class="collapse navbar-collapse header-collapse">
				<label style="margin-left: 800px; font-size: 10px">Benvenuto:
					${logInInformations.username} Ultimo Accesso:
					${logInInformations.lastAccess}</label>
			</div>
		</div>
	</div>
	<div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#" style="font-weight: bold;">Inserisci
						Nuova Inserzione</a></li>
				<li><a href="modify.do" style="font-weight: bold;">Modifica
						Inserzione</a></li>
			</ul>
		</div>

		<c:if test="${insResult == 'true'}">
			<div class="alert alert-success">Ben fatto,
				inserimento...RIUSCITO!</div>
		</c:if>
		<!--/.nav-collapse -->
	</div>
	<!--/.container-fluid -->
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="panel panel-default" id="headings">
					<!--  <div class="panel-heading">Headings</div> -->
					<div class="panel-body">
						<form id="insertAd" name="insertAd" action="insertAd.do"
							method="POST">
							<div class="form-group">
								<label for="catFLat">Categoria</label> <select
									class="form-control" id="catFLat" name="catFLat">
									<option id="0">Tutte</option>
									<option id="1">Residenziale</option>
									<option id="2">Commerciale</option>
									<option id="3">Imperdibili</option>
								</select>
							</div>
							<div class="form-group">
								<label for="tipFLat">Tipologia</label> <select
									class="form-control" id="tipFLat" name="tipFLat">
									<option id="0">Tutte</option>
									<option id="1">Appartamenti</option>
									<option id="3">Ville</option>
									<option id="3">Rustici/Cascine/Case</option>
									<option id="4">Box/posti auto</option>
									<option id="5">Terreno</option>
								</select>
							</div>
							<div class="form-group">
								<label for="provFlat">Provincia</label> <select class="form-control"
									id="provFlat" name="provFlat" onchange="searchComuni()">
									<option id="0" value="0">Tutte</option>
									<option id="1" value="1">Napoli</option>
									<option id="2" value="2">Caserta</option>
									<!-- <option id="2" value="2">Caserta</option> -->
								</select>
								<input id="provincia" name="provincia" style="display: none;">
							</div>
							<div class="form-group" id="comuneCheck">
								<label for="comFLat">Comune</label> <select class="form-control"
									id="comFLat" name="comFLat">
									<option id="0" value="0">Tutti</option>
								</select>
								<input id="comune" name="comune" style="display: none;">
							</div>
							<div class="form-group" id="fittasiCheck">
								<label for="przA">Prezzo</label> <b> </b><input id="przA"
									name="przA" data-slider-id='ex1Slider' type="text"
									data-slider-min="300" data-slider-max="4500"
									data-slider-step="50" data-slider-value="2500" /> <b> </b> <span><label>Euro Mensili</label></span>
									<input id="prezzoAffitto" name="prezzoAffitto" style="display: none;">
							</div>
							<div class="form-group" id="vendesiCheck">
								<label for="przV">Prezzo</label> <b> </b><input id="przV"
									name="przV" data-slider-id='ex1Slider' type="text"
									data-slider-min="250000" data-slider-max="6000000"
									data-slider-step="50000" data-slider-value="4000000" /> <b> </b> <span><label>Euro</label></span>
									<input id="prezzoVendita" name="prezzoVendita" style="display: none;">
							</div>
							
							<div class="form-group">
								<label for="supFlat">Superficie</label> <b> </b><input
									id="supFlat" name="supFlat" data-slider-id='ex1Slider'
									type="text" data-slider-min="0" data-slider-max="3000"
									data-slider-step="50" data-slider-value="1500" /> <b> </b> <span><label>M2</label></span>
								<input id="superficie" name="superficie" style="display: none;">
							</div>

							<div class="form-group">
								<label for="fit">Affittasi</label> <b> </b> <input
									type="checkbox" id="fitt" name="fitt" /> <b> </b> <input
									id="fittasi" name="fittasi" style="display: none;"
									class="form-control"> <label for="vend">Vendesi</label>
								<b> </b> <input type="checkbox" id="vend" name="vend" /> <b>
								</b> <input id="vendesi" name="vendesi" style="display: none;"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="numLocFlat">Locali</label> <b> </b> <input
									id="numLocFlat" name="numLocFlat" data-slider-id='ex1Slider'
									type="text" data-slider-min="0" data-slider-max="8"
									data-slider-step="1" data-slider-value="4" /> <b> </b> <span><label>Qnt</label></span>
								<input id="locali" name="locali" style="display: none;"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="numBagFlat">Bagni</label> <b> </b><input
									id="numBagFlat" name="numBagFlat" data-slider-id='ex1Slider'
									type="text" data-slider-min="0" data-slider-max="4"
									data-slider-step="1" data-slider-value="2" /> <b> </b> <span><label>Qnt</label></span>
								<input id="bagni" name="bagni" style="display: none;"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="comment">Descrizione</label>
								<textarea class="form-control" rows="5" id="descrizioneFlat" name="descrizioneFlat"></textarea>
							</div>

							<div class="form-group">
								<label for="box">Box Auto</label> <b> </b> <input
									type="checkbox" id="box" name="box" /> <b> </b> <input
									id="boxAuto" name="boxAuto" style="display: none;"
									class="form-control"> <label for="giar">Giardino</label>
								<b> </b> <input type="checkbox" id="giar" name="giar" /> <b>
								</b> <input id="giardino" name="giardino" style="display: none;"
									class="form-control"> <label for="bal">Balcone</label>
								<b> </b> <input type="checkbox" id="bal" name="bal" /><b> </b> <input
									id="balcone" name="balcone" style="display: none;"
									class="form-control"> <label for="terr">Terrazzo</label>
								<b> </b> <input type="checkbox" id="terr" name="terr" /> <b>
								</b> <input id="terrazzo" name="terrazzo" style="display: none;"
									class="form-control"> <label for="ascensore">Ascensore</label>
								<b> </b> <input type="checkbox" id="asc" name="asc" /> <b> </b>
								<input id="ascensore" name="ascensore" style="display: none;"
									class="form-control">
							</div>

							<c:if test="${disabilitaSfoglia == 'false'}">
								<button class="btn btn-lg btn-primary btn-block" type="submit"
									onclick="return validation()">Inserisci Inserzione</button>
							</c:if>
							<%-- <c:if test="${disabilitaSfoglia == 'true'}">
									<button class="btn btn-lg btn-primary btn-block" type="submit" onclick="return validation()" disabled>Inserisci Inserzione</button>
								</c:if> --%>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<c:if test="${disabilitaSfoglia == 'false'}">
					<div class="panel panel-default" id="headings">
						<label class="control-label">Carica foto</label> <input
							id="fotoFlat" type="file" multiple=true class="file-loading"
							disabled>
					</div>
				</c:if>
				<c:if test="${disabilitaSfoglia == 'true'}">
					<form enctype="multipart/form-data" action="upload.do"
						method="POST">
						<div class="panel panel-default" id="headings">
							<label class="control-label">Carica foto</label> <input
								id="fotoFlat" name="fotoFlat" type="file" multiple="multiple"
								class="file-loading" class="form-control">
						</div>
					<!-- 	<div class="panel panel-default" id="headings">
							<label for="def">Usa foto default</label> <b> </b> <input
								type="checkbox" id="def" name="def" /> <b> </b>
						</div> -->
						<div class="col-lg-2">
							<!-- onclick="return validation()" -->
							<button id="allegaFoto" name="allegaFoto">Allega foto</button>
						</div>
					</form>
				</c:if>
			</div>
		</div>
	</div>
</body>


<script>
	/**Inizialize UI component**/
	$(function() {
		$('#fitt').prop('checked', true);
		$("#przA").slider({});
		$("#przV").slider({});
		$("#supFlat").slider({});
		$("#numLocFlat").slider({});
		$("#numBagFlat").slider({});
		$("#fotoFlat").fileinput({
			/*  initialPreview: [
			     '<img src="/images/moon.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
			     '<img src="/images/earth.jpg" class="file-preview-image" alt="The Earth" title="The Earth">'
			 ], */
			overwriteInitial : false,
			initialCaption : "Carica la foto dell'immobile"
		});
		$('#vendesiCheck').hide();
		$('#comuneCheck').hide();
		
		$("#vend").click(function() {
			$('#fitt').prop('checked', false);	
			$('#vend').prop('checked', true);
			$('#fittasiCheck').hide();
			$('#vendesiCheck').show();
		});
		$("#fitt").click(function() {
			$('#fitt').prop('checked', true);	
			$('#vend').prop('checked', false);
			$('#fittasiCheck').show();
			$('#vendesiCheck').hide();
			
		});
	});
	/**Validation on fields**/
	function validation() {
		console.log($("#fotoFlat").val());
		if ($("#fotoFlat").val() == "") {
			/* var esito = confirm("Non hai inserito nessuna foto dell'immobile..se sicuro di vuole continuare?");
			if(esito == true)
				return true;
				
			else
				return false; */
			$("#prezzoAffitto").val(($("#przA").data('slider').getValue()));
			$("#prezzoVendita").val(($("#przV").data('slider').getValue()));
			$("#superficie").val(($("#supFlat").data('slider').getValue()));
			$("#fittasi").val($("#fitt").prop('checked'));
			$("#vendesi").val($("#vend").prop('checked'));
			$("#locali").val(($("#numLocFlat").data('slider').getValue()));
			$("#bagni").val(($("#numBagFlat").data('slider').getValue()));
			$("#boxAuto").val($("#box").prop('checked'));
			$("#giardino").val($("#giar").prop('checked'));
			$("#balcone").val($("#bal").prop('checked'));
			$("#terrazzo").val($("#terr").prop('checked'));
			$("#ascensore").val($("#asc").prop('checked'));
			$("#comune").val($("#comFLat").val());
			$("#provincia").val($("#provFlat").val());

		}
		return true;
	}

	function searchComuni()
	{
	 	var idProvincia = $("#provFlat").val();
	 	if(idProvincia == 0)
		{
			 $('#comuneCheck').hide();
		}
		else
		{ 
			$.ajax({
				  type: "POST",
				  url: "searchProvince.do",
				  data: {idComune: idProvincia},
				  dataType : "json",
				  async:false,
				  success: function (data) {
					  console.log(data);
					  $('#comFLat option[value!="0"]').remove();
					   for(var item in data) {
						  $('#comFLat').append('<option id="' + data[item].idProvinciaFlat + ' value="' + data[item].idProvinciaFlat + '">' + data[item].nomeProvinciaFlat + '</option>');
					  } 
					   $('#comuneCheck').show(); 
	          	  }	
				});
		 }
	};
	
	$('#fotoFlat').change(function() {
		$("input[type=submit]").removeAttr("disabled");
	});
</script>
</html>


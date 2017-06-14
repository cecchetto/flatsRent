<!doctype html>
<html>

<head>
<title>Miele Servizi Immobiliari</title>
<meta name="viewport" content="width=device-width">
<link href="css/plum-portfolio.css" rel="stylesheet">
<!-- <link href="css/bootstrap.css" rel="stylesheet">
<link href="css/slider.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type='text/javascript'
	src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.js'></script>
<script type="text/javascript"
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="css/slider.css" type="text/css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<a class="navbar-brand" href="preLoading.do" style="font-weight: bold;"><img
					src="img/mieleLogo.gif" height="30" width="30">iele</a>
				<h6 style="font-weight: bold;">Studio Tecnico Immobiliare</h6>
			</div>

			<div class="collapse navbar-collapse header-collapse">

				<!-- <p class="navbar-text navbar-right">Themestrap by <a href="http://www.divshot.com/" target="_blank">Divshot</a></p> -->
				<p class="navbar-text navbar-right">
					<a href="https://twitter.com/share" class="twitter-share-button"
						data-via="divshot" data-hashtags="themestrap">Tweet</a>
					<script>
						!function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
									.test(d.location) ? 'http' : 'https';
							if (!d.getElementById(id)) {
								js = d.createElement(s);
								js.id = id;
								js.src = p
										+ '://platform.twitter.com/widgets.js';
								fjs.parentNode.insertBefore(js, fjs);
							}
						}(document, 'script', 'twitter-wjs');
					</script>
				</p>
			</div>
		</div>
	</div>
	<div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="preLoading.do" style="font-weight: bold;">Cerca
						Soluzioni</a></li>
				<li><a href="#" style="font-weight: bold;">Chi siamo</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	<!--/.container-fluid -->
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="panel panel-default" id="headings">
					<!--  <div class="panel-heading">Headings</div> -->
					<div class="panel-body">
						<form id="searchAd" name="searchAd" action="searchAd.do"
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
								<label for="provFlat">Provincia</label> <select
									class="form-control" id="provFlat" name="provFlat"
									onchange="searchComuni()">
									<option id="0" value="0">Tutte</option>
									<option id="1" value="1">Napoli</option>
									<!-- <option id="2" value="2">Caserta</option> -->
								</select> <input id="provincia" name="provincia" style="display: none;">
							</div>
							<div class="form-group" id="comuneCheck">
								<label for="comFLat">Comune</label> <select class="form-control"
									id="comFLat" name="comFLat">
									<option id="0" value="0">Tutti</option>
								</select> <input id="comune" name="comune" style="display: none;">
							</div>
							<div class="form-group" id="fittasiCheck">
								<label for="przA">Prezzo</label> <b> </b> <input id="przA"
									name="przA" type="text" class="span2" value=""
									data-slider-min="300" data-slider-max="4500"
									data-slider-step="50" data-slider-value="[1100,2500]" /> <b>
								</b> <span><label>Euro Mensili</label></span> <input
									id="prezzoAffitto" name="prezzoAffitto" style="display: none;">
							</div>
							<div class="form-group" id="vendesiCheck">
								<label for="przV">Prezzo</label> <b> </b> <input id="przV"
									name="przV" type="text" class="span2" value=""
									data-slider-min="300000" data-slider-max="6000000"
									data-slider-step="100000" data-slider-value="[1500000,3500000]" />
								<b> </b> <span><label>Euro</label></span> <input
									id="prezzoVendita" name="prezzoVendita" style="display: none;">
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
								<label for="box">Box Auto</label> <b> </b> <input
									type="checkbox" id="box" name="box" /> <b> </b> <input
									id="boxAuto" name="boxAuto" style="display: none;"
									class="form-control"> <label for="giar">Giardino</label>
								<b> </b> <input type="checkbox" id="giar" name="giar" /> <b>
								</b> <input id="giardino" name="giardino" style="display: none;"
									class="form-control"> <label for="bal">Balcone</label>
								<b> </b> <input type="checkbox" id="bal" name="bal" /><b> </b>
								<input id="balcone" name="balcone" style="display: none;"
									class="form-control"> <label for="terr">Terrazzo</label>
								<b> </b> <input type="checkbox" id="terr" name="terr" /> <b>
								</b> <input id="terrazzo" name="terrazzo" style="display: none;"
									class="form-control"> <label for="ascensore">Ascensore</label>
								<b> </b> <input type="checkbox" id="asc" name="asc" /> <b>
								</b> <input id="ascensore" name="ascensore" style="display: none;"
									class="form-control">
							</div>

							<button class="btn btn-lg btn-primary btn-block" type="submit"
								onclick="return validation()">Avvia Ricerca ></button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="panel panel-default" id="headings">
					<div class="col-lg-12">
						<div class="bs-docs-header" id="content" tabindex="-1">
							<h5 style="font-weight: bold;">Risultato Ricerca</h5>
							<!-- <div class="panel panel-default" id="headings"> -->
							<div class="table-responsive">
								<table class="table table-striped table-bordered">
									<tbody>
										<c:forEach items="${searchedFlat}" var="informazioniFlat">
											<c:forEach items="${informazioniFlat.foto}" var="fotoFlat">
												<c:set var="fotoName" value="${fotoFlat.pathFoto}" />
											</c:forEach>
											<tr>

												<td style="display: none;">1</td>
												<td align="center" bordercolor="red"><button id="info_${informazioniFlat.id}"
																	name="info_${informazioniFlat.id}"
																	onclick="getInfoFlat(${informazioniFlat.id})"><img
														src="img/archivioMiele/${fotoName}" height="100"
														width="150"></button></td>
												<td align="center"><textarea rows="5"
														cols="70" readonly="readonly">${informazioniFlat.descrizione}</textarea></td>
												<%-- <td align="center" width="10%">
													<table>
														<tr align="center">
															<td align="center">
																<button id="mail_${informazioniFlat.id}"
																	name="mail_${informazioniFlat.id}">
																	<img src="img/email-gif.gif" width="30" height="30"
																		align="middle">
																</button>
															</td>
														</tr>
														<tr align="center">
															<td align="center">
																<button id="info_${informazioniFlat.id}"
																	name="info_${informazioniFlat.id}"
																	onclick="getInfoFlat(${informazioniFlat.id})">
																	<img src="img/info.gif" width="30" height="30"
																		align="middle">
																</button>
															</td>
														</tr>

													</table>
												</td> --%>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="bs-docs-header" id="content" tabindex="-1">
					<h3 style="font-weight: bold;">Dai un occhio a queste</h3>
					<div class="panel panel-default" id="headings">
						<div class="table-responsive">
							<table class="table table-striped table-bordered">
								<tbody>
									<c:forEach items="${interestedAtTheseFlats}"
										var="informazioniFlat">
										<c:forEach items="${informazioniFlat.foto}" var="fotoFlat">
											<c:set var="fotoName" value="${fotoFlat.pathFoto}" />
										</c:forEach>
										<tr>

											<td style="display: none;">1</td>
											<td align="center" width="30%"><a href="#"><img
													src="img/archivioMiele/${fotoName}" height="150"
													width="300"></a></td>
											<td align="center" width="60%"><textarea rows="8"
													cols="70" readonly="readonly">${informazioniFlat.descrizione}</textarea></td>
											<td align="center" width="10%">
												<table>
													<tr align="center">
														<td align="center">
															<button id="mail_${informazioniFlat.id}"
																name="mail_${informazioniFlat.id}">
																<img src="img/email-gif.gif" width="30" height="30"
																	align="middle">
															</button>
														</td>
													</tr>
													<tr align="center">
														<td align="center">
															<button id="info_${informazioniFlat.id}"
																name="info_${informazioniFlat.id}"
																onclick="getInfoFlat(${informazioniFlat.id})">
																<img src="img/info.gif" width="30" height="30"
																	align="middle">
															</button>
														</td>
													</tr>

												</table>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"
	type="text/javascript"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="js/bootstrap-slider.js" type="text/javascript"></script>
<script>
	//With JQuery
	$(function() {
		$('#fitt').prop('checked', true);
		$("#przA").slider({});
		$("#przV").slider({});
		$("#supFlat").slider({});
		$("#numLocFlat").slider({});
		$("#numBagFlat").slider({});
		
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
	
	function getInfoFlat(idFlat)
	{
		var form = $('<form></form>').attr('action','getInfoFlat.do');
		$(form).attr('method','POST');
		var ele = $('<input type="text" id="idFlat"name="idFlat"/>');  
		$(ele).val(idFlat); 
		$(ele).appendTo($(form));
		$(form).appendTo('body');
		$(form).submit();
	};
	
	/**Validation on fields**/
	function validation() {
		
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

		return true;
	};
	
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
	
</script>
</html>


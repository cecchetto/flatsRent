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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
body {
	padding-bottom: 60px;
}
</style>

</head>
<% 
  response.sendRedirect("preLoading.do");
%>
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
				<li class="active"><a href="#" style="font-weight: bold;">Cerca
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
						<form>
							<fieldset>
								<div class="form-group">
									<label for="categoria">Categoria</label> <select
										class="form-control" id="cat" onchange="prova()">
										<option id="0">Tutte</option>
										<option id="1">Residenziale</option>
										<option id="2">Commerciale</option>
										<option id="3">Imperdibili</option>
									</select>
								</div>
								<div class="form-group">
									<label for="tipologia">Tipologia</label> <select
										class="form-control" id="tip">
										<option id="0">Tutte</option>
										<option id="1">Appartamenti</option>
										<option id="3">Ville</option>
										<option id="3">Rustici/Cascine/Case</option>
										<option id="4">Box/posti auto</option>
										<option id="5">Terreno</option>
									</select>
								</div>
								<div class="form-group">
									<label for="tipologia">Comune</label> <select
										class="form-control" id="tip">
										<option id="0">Tutti</option>
										<option id="1">Varcaturo</option>
										<option id="2">Giugliano di Napoli</option>
										<option id="3">Melito</option>
									</select>
								</div>
								<div class="form-group">
									<label for="prezzo">Prezzo</label> <b> </b> <input id="prezzo"
										type="text" class="span2" value="" data-slider-min="0"
										data-slider-max="3000" data-slider-step="50"
										data-slider-value="[1100,2000]" /> <b> </b> <span><label>Euro</label></span>
								</div>

								<div class="form-group">
									<label for="superficie">Superficie</label> <b> </b> <input
										id="superficie" type="text" class="span2" data-slider-min="0"
										data-slider-max="3000" data-slider-step="10"
										data-slider-value="[1100,2000]" /> <b> </b> <span><label>M2</label></span>
								</div>

								<div class="form-group">
									<label for="fittasi">Affittasi</label> <b> </b> <input
										type="checkbox" /> <b> </b> <label for="fittasi">Vendesi</label>
									<b> </b> <input type="checkbox" /> <b> </b>
								</div>

								<div class="form-group">
									<label for="prezzo">Locali</label> <b> </b> <input id="locali"
										data-slider-id='ex1Slider' type="text" data-slider-min="0"
										data-slider-max="8" data-slider-step="1" data-slider-value="4" />
									<b> </b> <span><label>Qnt</label></span>
								</div>

								<div class="form-group">
									<label for="prezzo">Bagni</label> <b> </b><input id="bagni"
										data-slider-id='ex1Slider' type="text" data-slider-min="0"
										data-slider-max="4" data-slider-step="1" data-slider-value="2" />
									<b> </b> <span><label>Qnt</label></span>
								</div>

								<div class="form-group">
									<label for="boxAuto">Box Auto</label> <b> </b> <input
										type="checkbox" /> <b> </b> <label for="giardino">Giardino</label>
									<b> </b> <input type="checkbox" /> <b> </b> <label
										for="balcone">Balcone</label> <b> </b> <input type="checkbox" />
									<b> </b> <label for="terrazzo">Terrazzo</label> <b> </b> <input
										type="checkbox" /> <b> </b> <label for="ascensore">Ascensore</label>
									<b> </b> <input type="checkbox" /> <b> </b>
								</div>


								<button class="btn btn-lg btn-primary btn-block" type="submit">Avvia
									Ricerca</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="panel panel-default" id="headings">
					<img alt="" src="img/logoGif.gif" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="bs-docs-header" id="content" tabindex="-1">
					<h3 style="font-weight: bold;">Ultimi arrivi</h3>
					<div class="panel panel-default" id="headings">
						<div class="table-responsive">
							<table class="table table-bordered">
								<tbody>

									<tr>
										<td>1</td>
										<td>John</td>
										<td>Carter</td>
										<td>johncarter@mail.com</td>
										<td>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Nam eu sem tempor, varius quam at, luctus dui.</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Peter</td>
										<td>Parker</td>
										<td>peterparker@mail.com</td>
										<td>Vestibulum consectetur scelerisque lacus, ac
											fermentum lorem convallis sed. Nam odio tortor, dictum quis
											malesuada at, pellentesque.</td>
									</tr>
								
								</tbody>
							</table>
						</div>
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
		$("#prezzo").slider({});
		$("#superficie").slider({});
		$("#locali").slider({});
		$("#bagni").slider({});
	});
</script>
</html>


<!doctype html>
<html>

<head>
<title>Miele Servizi Immobiliari</title>
<meta name="viewport" content="width=device-width">
<link href="css/plum-portfolio.css" rel="stylesheet">
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
			<div class="col-lg-9">
				<div class="panel panel-default" id="headings">

					<div class="bs-docs-header" id="content" tabindex="-1">
						<h5 style="font-weight: bold;">${infoFlatBean.descrizione}</h5>
						<!-- <div class="panel panel-default" id="headings"> -->
						<div class="table-responsive">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td align="center" width="60%">
											<div id="jssor_1"
												style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 500px; height: 400px; overflow: hidden; visibility: hidden;">
												<div data-u="loading"
													style="position: absolute; top: 0px; left: 0px;">
													<div
														style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
													<div
														style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
												</div>
												<div data-u="slides"
													style="cursor: default; position: relative; top: 0px; left: 0px; width: 500px; height: 400px; overflow: hidden;">

													<c:forEach items="${fotoFlatBeans}" var="fotoFlatBean">
														<c:set var="fotoName" value="${fotoFlatBean.pathFoto}" />
														<div data-p="144.50" style="display: none;">
															<img data-u="image" src="img/archivioMiele/${fotoName}" />
															<img data-u="thumb" src="img/archivioMiele/${fotoName}" />
														</div>
													</c:forEach>
												</div>
												<!-- Thumbnail Navigator -->
												<div data-u="thumbnavigator" class="jssort01"
													style="position: absolute; left: 0px; bottom: 0px; width: 400px; height: 100px;"
													data-autocenter="1">
													<!-- Thumbnail Item Skin Begin -->
													<div data-u="slides" style="cursor: default;">
														<div data-u="prototype" class="p">
															<div class="w">
																<div data-u="thumbnailtemplate" class="t"></div>
															</div>
															<div class="c"></div>
														</div>
													</div>
													<!-- Thumbnail Item Skin End -->
												</div>

												<!-- Arrow Navigator -->
												<span data-u="arrowleft" class="jssora05l"
													style="top: 158px; left: 8px; width: 40px; height: 40px;"></span>
												<span data-u="arrowright" class="jssora05r"
													style="top: 158px; right: 8px; width: 40px; height: 40px;"></span>
												<a href="http://www.jssor.com" style="display: none">Bootstrap
													Carousel</a>
											</div>
										</td>
										<td align="center" width="40%">
											<div class="panel panel-default" id="headings">
												<div class="panel-heading" id="info">Chiedi info...</div>
												<div class="alert alert-success"  id="responseMailOk" role="alert">Presto sara' contattato...Grazie</div>
												<div class="alert alert-danger" id="responseMailKo" role="alert">Errore nel sistema...riprova tra poco..Grazie</div>
												<div class="panel-body">
													<form id="sendMail" name="sendMail">
														<div class="form-group">
															<label for="inputUser">Nome e cognome*</label><input
																id="inputUser" name="inputUser" class="form-control"
																placeholder="Inserisci" required autofocus>
														</div>

														<div class="form-group">
															<label for="telefonoUser">Telefono*</label> <input
																id="telefonoUser" name="telefonoUser"
																class="form-control" type="tel" placeholder="Inserisci"
																required autofocus>
														</div>

														<div class="form-group">
															<label for="emailUser">Email*</label> <input
																id="emailUser" name="emailUser" class="form-control"
																type="email" placeholder="Inserisci" required autofocus>
														</div>

														<div class="form-group">
															<label for="nome">Messaggio</label>
															<textarea class="form-control" id="messaggi"
																name="messaggi" onclick="resetValue()">Di cosa hai bisogno?
															</textarea>
														</div> 

														<div class="form-group">
															<div class="checkbox">
																<h6>
																	<label for="privacyUser"><b>Acconsento al
																			trattamento dei dati*</b></label>
																</h6>
																<input id="privacyUser" name="privacyUser"
																	type="checkbox" required autofocus>
															</div>
														</div>

														<button name="sendMailBtn" id="sendMailBtn" type="button" > Invia ></button>
													</form>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="table-responsive">
							<h4 style="font-weight: bold; color: red">Dettaglio Annuncio</h4>
							<table>
								<tbody>
									<tr>
										<td align="center" width="25%" style="display: none;">
											<input type="text" id="idFLat" name="idFlat" value="${infoFlatBean.id}">
										</td>
										<td align="center" width="25%">Tipologia:
											<h5 style="font-weight: bold;">${infoFlatBean.tipologia}</h5>
										</td>
										<td align="center" width="25%">Prezzo:
											<h5 style="font-weight: bold;">${infoFlatBean.prezzo}</h5>
										</td>
										<td align="center" width="25%">Bagni:
											<h5 style="font-weight: bold;">${infoFlatBean.bagni}</h5>
										</td>
										<td align="center" width="25%">Categoria:
											<h5 style="font-weight: bold;">${infoFlatBean.categoria}</h5>
										</td>
									</tr>
									<tr>
										<td align="center" width="25%">Superficie:
											<h5 style="font-weight: bold;">${infoFlatBean.superficie}</h5>
										</td>

										<c:if test="${infoFlatBean.affittasi == true}">
											<td align="center" width="25%">Contratto:
												<h5 style="font-weight: bold;">Affitto</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.affittasi == false}">
											<td align="center" width="25%">Contratto:
												<h5 style="font-weight: bold;">Vendesi</h5>
											</td>
										</c:if>

										<td align="center" width="25%">Locali:
											<h5 style="font-weight: bold;">${infoFlatBean.locali}</h5>
										</td>

										<c:if test="${infoFlatBean.boxAuto == true}">
											<td align="center" width="25%">Box Auto:
												<h5 style="font-weight: bold;">Si</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.boxAuto == false}">
											<td align="center" width="25%">Box Auto:
												<h5 style="font-weight: bold;">No</h5>
											</td>
										</c:if>
									</tr>
									<tr>
										<c:if test="${infoFlatBean.giardino == true}">
											<td align="center" width="25%">Giardino:
												<h5 style="font-weight: bold;">Si</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.giardino == false}">
											<td align="center" width="25%">Giardino:
												<h5 style="font-weight: bold;">No</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.terrazzo == true}">
											<td align="center" width="25%">Terrazzo:
												<h5 style="font-weight: bold;">Si</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.terrazzo == false}">
											<td align="center" width="25%">Terrazzo:
												<h5 style="font-weight: bold;">No</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.ascensore == true}">
											<td align="center" width="25%">Ascensore:
												<h5 style="font-weight: bold;">Si</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.ascensore== false}">
											<td align="center" width="25%">Ascensore:
												<h5 style="font-weight: bold;">No</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.balcone == true}">
											<td align="center" width="25%">Balcone:
												<h5 style="font-weight: bold;">Si</h5>
											</td>
										</c:if>
										<c:if test="${infoFlatBean.balcone== false}">
											<td align="center" width="25%">Balcone:
												<h5 style="font-weight: bold;">No</h5>
											</td>
										</c:if>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- </div> -->
					</div>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
</body>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"
	type="text/javascript"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="js/bootstrap-slider.js" type="text/javascript"></script>
<script src="js/carosel/jssor.slider.mini.js" type="text/javascript"></script>
<script>

	$("#sendMailBtn").click(function() {
	  var datastring =$( "#sendMail" ).serializeArray();
	  var json = JSON.stringify(datastring);
	  var idFlat = $("#idFLat").val();
	  $.ajax({
		  type: "POST",
		  url: "sendMail.do",
		  data: {inputUser: json,idFlat:idFlat},
		  dataType : "json",
		  async:false,
		  success: function (data) {
			  if(data == "true")
			  {
				  $("#info").hide();
				  $("#responseMailOk").show();
				  //$( "#responseMailKo" ).
			  }
				 
				  
      	  }	
		});
	});

	function resetValue() {
		$("#messaggi").val("");
	}

	jQuery(document).ready(function($) {
		$("#responseMailOk").hide();
		$("#responseMailKo").hide();
		
		//responsive code begin
		//you can remove responsive code if you don't want the slider scales while window resizing
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 800);
				jssor_1_slider.$ScaleWidth(refSize);
			} else {
				window.setTimeout(ScaleSlider, 30);
			}
		}
		ScaleSlider();
		$(window).bind("load", ScaleSlider);
		$(window).bind("resize", ScaleSlider);
		$(window).bind("orientationchange", ScaleSlider);
		//responsive code end
	});

	var jssor_1_SlideshowTransitions = [ {
		$Duration : 1200,
		x : 0.3,
		$During : {
			$Left : [ 0.3, 0.7 ]
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : -0.3,
		$SlideOut : true,
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : -0.3,
		$During : {
			$Left : [ 0.3, 0.7 ]
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		$SlideOut : true,
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : 0.3,
		$During : {
			$Top : [ 0.3, 0.7 ]
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : -0.3,
		$SlideOut : true,
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : -0.3,
		$During : {
			$Top : [ 0.3, 0.7 ]
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : 0.3,
		$SlideOut : true,
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		$Cols : 2,
		$During : {
			$Left : [ 0.3, 0.7 ]
		},
		$ChessMode : {
			$Column : 3
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		$Cols : 2,
		$SlideOut : true,
		$ChessMode : {
			$Column : 3
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : 0.3,
		$Rows : 2,
		$During : {
			$Top : [ 0.3, 0.7 ]
		},
		$ChessMode : {
			$Row : 12
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : 0.3,
		$Rows : 2,
		$SlideOut : true,
		$ChessMode : {
			$Row : 12
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : 0.3,
		$Cols : 2,
		$During : {
			$Top : [ 0.3, 0.7 ]
		},
		$ChessMode : {
			$Column : 12
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		y : -0.3,
		$Cols : 2,
		$SlideOut : true,
		$ChessMode : {
			$Column : 12
		},
		$Easing : {
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		$Rows : 2,
		$During : {
			$Left : [ 0.3, 0.7 ]
		},
		$ChessMode : {
			$Row : 3
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : -0.3,
		$Rows : 2,
		$SlideOut : true,
		$ChessMode : {
			$Row : 3
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		y : 0.3,
		$Cols : 2,
		$Rows : 2,
		$During : {
			$Left : [ 0.3, 0.7 ],
			$Top : [ 0.3, 0.7 ]
		},
		$ChessMode : {
			$Column : 3,
			$Row : 12
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		x : 0.3,
		y : 0.3,
		$Cols : 2,
		$Rows : 2,
		$During : {
			$Left : [ 0.3, 0.7 ],
			$Top : [ 0.3, 0.7 ]
		},
		$SlideOut : true,
		$ChessMode : {
			$Column : 3,
			$Row : 12
		},
		$Easing : {
			$Left : $Jease$.$InCubic,
			$Top : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		$Delay : 20,
		$Clip : 3,
		$Assembly : 260,
		$Easing : {
			$Clip : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		$Delay : 20,
		$Clip : 3,
		$SlideOut : true,
		$Assembly : 260,
		$Easing : {
			$Clip : $Jease$.$OutCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		$Delay : 20,
		$Clip : 12,
		$Assembly : 260,
		$Easing : {
			$Clip : $Jease$.$InCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	}, {
		$Duration : 1200,
		$Delay : 20,
		$Clip : 12,
		$SlideOut : true,
		$Assembly : 260,
		$Easing : {
			$Clip : $Jease$.$OutCubic,
			$Opacity : $Jease$.$Linear
		},
		$Opacity : 2
	} ];

	var jssor_1_options = {
		$AutoPlay : true,
		$SlideshowOptions : {
			$Class : $JssorSlideshowRunner$,
			$Transitions : jssor_1_SlideshowTransitions,
			$TransitionsOrder : 1
		},
		$ArrowNavigatorOptions : {
			$Class : $JssorArrowNavigator$
		},
		$ThumbnailNavigatorOptions : {
			$Class : $JssorThumbnailNavigator$,
			$Cols : 10,
			$SpacingX : 8,
			$SpacingY : 8,
			$Align : 360
		}
	};

	var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
</script>

<style>

/* jssor slider arrow navigator skin 05 css */
/*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        */
.jssora05l,.jssora05r {
	display: block;
	position: absolute;
	/* size of arrow element */
	width: 40px;
	height: 40px;
	cursor: pointer;
	/* background: url('img/a17.png') no-repeat; */
	overflow: hidden;
}

.jssora05l {
	background-position: -10px -40px;
}

.jssora05r {
	background-position: -70px -40px;
}

.jssora05l:hover {
	background-position: -130px -40px;
}

.jssora05r:hover {
	background-position: -190px -40px;
}

.jssora05l.jssora05ldn {
	background-position: -250px -40px;
}

.jssora05r.jssora05rdn {
	background-position: -310px -40px;
}

/* jssor slider thumbnail navigator skin 01 css */
/*
        .jssort01 .p            (normal)
        .jssort01 .p:hover      (normal mouseover)
        .jssort01 .p.pav        (active)
        .jssort01 .p.pdn        (mousedown)
        */
.jssort01 .p {
	position: absolute;
	top: 0;
	left: 0;
	width: 72px;
	height: 72px;
}

.jssort01 .t {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: none;
}

.jssort01 .w {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
}

.jssort01 .c {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 68px;
	height: 68px;
	border: #000 2px solid;
	box-sizing: content-box;
	/* background: url('img/t01.png') -800px -800px no-repeat; */
	_background: none;
}

.jssort01 .pav .c {
	top: 2px;
	_top: 0px;
	left: 2px;
	_left: 0px;
	width: 68px;
	height: 68px;
	border: #000 0px solid;
	_border: #fff 2px solid;
	background-position: 50% 50%;
}

.jssort01 .p:hover .c {
	top: 0px;
	left: 0px;
	width: 70px;
	height: 70px;
	border: #fff 1px solid;
	background-position: 50% 50%;
}

.jssort01 .p.pdn .c {
	background-position: 50% 50%;
	width: 68px;
	height: 68px;
	border: #000 2px solid;
}

* html .jssort01 .c,* html .jssort01 .pdn .c,* html .jssort01 .pav .c {
	/* ie quirks mode adjust */
	width /**/: 72px;
	height /**/: 72px;
}
</style>
</html>


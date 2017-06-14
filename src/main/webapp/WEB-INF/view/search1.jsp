<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Miele studio tecnico Immobiliare</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>

<body>
	
	<div class="container" style="background-image: url(img/bg.jpg)">
		<img alt="" src="img/logoMiele.gif" width="100" height="100">
    </div>
      
    <!-- Navigation -->

    <div class="container" style="padding-top: 40px; padding-bottom: 40px" class="col-md-6">
    	<div class="col-md-2" style="background-color:#337ab7">
	    	<br>
	    	<form action="#">
	    		<div class="form-group">
	  					<label for="selSoluzione" style="color: #fff">
	  						Contratto  					
	  					</label>
	 					<select class="form-control" id="selSoluzione">
	    					<option>-----</option>
	      					<option>Affitto</option>
						    <option>Vendita</option>
	  					</select>
				</div>
				<div class="form-group">
	  					<label for="selCategoria" style="color: #fff">
	  						Categoria 					
	  					</label>
	 					<select class="form-control" id="selCategoria">
	    					<option>-----</option>
	      					<option>Residenziale</option>
						    <option>Commerciale</option>
	  					</select>
				</div>
		        <div class="form-group">
	  					<label for="selTipologia" style="color: #fff">
	  						Tipologia					
	  					</label>
	 					<select class="form-control" id="selTipologia">
	  					</select>
				</div>
				<div class="form-group">
	  					<label for="selVani" style="color: #fff">
	  						Vani					
	  					</label>
	 					<select class="form-control" id="selVani">
	 						<option>Qualsiasi</option>
	      					<option>1</option>
						    <option>2</option>
						    <option>3</option>
						    <option>4</option>
						    <option>5</option>
						    <option>5+</option>
	  					</select>
				</div>
				
				<div class="form-group">
	  					<label for="selVani" style="color: #fff">
	  						Prezzo					
	  					</label>
	  					<div class="row">
		 					<select class="form-control" id="selPrezzoDa" style="size: 25px">
		 						<option>Da</option>
		      					<option>50.000</option>
							    <option>100.000</option>
							    <option>150.000</option>
							    <option>200.000</option>
							    <option>250.000</option>
							    <option>....</option>
		  					</select>
		  					<select class="form-control" id="selPrezzoA" style="size: 25px">
		 						<option>A</option>
		      					<option>50.000</option>
							    <option>100.000</option>
							    <option>150.000</option>
							    <option>200.000</option>
							    <option>250.000</option>
							    <option>....</option>
		  					</select>
	  					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary col-md-12">Cerca</button>
				</div>
				<br><br><br>
	    	</form>
    	</div>
    	
    	<div class="col-md-8">
	    	<table class="table table-striped">
				    <thead>
				      <tr>
				     	<th>Foto</th>
				        <th>Zona</th>
				        <th>Vani</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td><img src="img/tableProva1(1).jpg" class="img-rounded" alt="Cinque Terre" width="30" height="30"></td>
				        <td>Giugliano di Napoli</td>
				        <td>3</td>
				      </tr>
				      <tr>
				        <td><img src="img/tableProva1(1).jpg" class="img-rounded" alt="Cinque Terre" width="30" height="30"></td>
				        <td>Melito</td>
				        <td>3</td>
				      </tr>
				      <tr>
				        <td><img src="img/tableProva1(1).jpg" class="img-rounded" alt="Cinque Terre" width="30" height="30"></td>
				        <td>Arzano</td>
				        <td>2</td>
				      </tr>
				    </tbody>
			</table>
		</div>
    </div>

   

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <div class="container">
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Nostri Servizi</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-home fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Cerca Soluzione</strong>
                                </h4>
                                <p>Cerca tra le tante soluzioni disponibili!!!!</p>
                                <a href="searchSolutions.do" class="btn btn-light">Cerca</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-compass fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Requisiti tecnici</strong>
                                </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Valutazioni</strong>
                                </h4>
                                <p>Richiedi una valutazione gratuita!!!</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shield fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Bucrazia tempi zero</strong>
                                </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
	</div>
    <!-- Footer -->
   <!--  <footer>
        <div class="container">
       
         
        </div>
    </footer> -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    
    $("#selCategoria").change(function() {
    	 
    	  var sel = $("#selTipologia");
    	  sel.empty();
    	  
    	  if(this.value == 'Residenziale')
   		  {
    		  sel.append('<option>Tutte</option>');
    		  sel.append('<option>Apparamento</option>'); 
    		  sel.append('<option>Attico</option>'); 
    		  sel.append('<option>Nuova costruzione</option>'); 
    		  sel.append('<option>.....</option>');  
   		  }
    	  else if(this.value == 'Commerciale')
   		  {
    		  sel.append('<option>Tutte</option>');
    		  sel.append('<option>Nuova costruzione</option>'); 
    		  sel.append('<option>Terreno agricolo</option>'); 
    		  sel.append('<option>Ufficio</option>'); 
    		  sel.append('<option>.....</option>');  
   		  }
    	  else
    		  sel.append('<option>----</option>'); 
   	});
    
    </script>

</body>

</html>

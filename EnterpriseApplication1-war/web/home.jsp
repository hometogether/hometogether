<%-- 
    Document   : home
    Created on : 22-nov-2015, 18.04.33
    Author     : Andrea22
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="APPMO Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.11.0.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type='text/javascript' src='js/jquery.simple-text-rotator.min.js'></script>
<link rel="stylesheet" href="css/simpletextrotator.css" type="text/css">

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
                                $(".text-rotate").textrotator({
                                    animation: "flipUp", // You can pick the way it animates when rotating through words. Options are dissolve (default), fade, flip, flipUp, flipCube, flipCubeUp and spin.
                                    separator: ",", // If you don't want commas to be the separator, you can define a new separator (|, &, * etc.) by yourself using this field.
                                    speed: 2000 // How many milliseconds until the next word show.
                                });
			});
                        
                        
		</script>
<script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
</script>
<!---- start-smoth-scrolling---->
</head>
<body>
	<div class="header" id="home">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img src="images/logoProva.png" alt=""></a>
			</div>
			<div class="navigation">
			 <span class="menu"></span> 
				<ul class="navig">
					<li><a href="index.html" class="scroll">HOME</a><span> </span></li>
					<li><a href="#features" class="scroll">FEATURES</a><span> </span></li>
					<li><a href="#countdown" class="scroll">COUNTDOWN</a><span> </span></li>
					<li><a href="#pricing" class="scroll">PRICING</a><span> </span></li>
					<li><a href="#testimonials" class="scroll">TESTIMONIALS</a><span> </span></li>
                                        <li><a class="btn" data-toggle="modal" href="#myModal" >Launch Modal</a><span> </span></li>
				</ul>
			</div>
                    
                   <div class="modal hide fade" id="myModal">
                    <div class="modal-header">
                      <a class="close" data-dismiss="modal">×</a>
                      <h3>Modal header</h3>
                    </div>
                    <div class="modal-body">
                      <p>One fine body?</p>
                    </div>
                    <div class="modal-footer">
                      <a href="#" class="btn">Close</a>
                      <a href="#" class="btn btn-primary">Save changes</a>
                    </div>
                  </div>
				 <!-- script-for-menu -->
		 <script>
				$("span.menu").click(function(){
					$(" ul.navig").slideToggle("slow" , function(){
					});
				});
		 </script>
		 <!-- script-for-menu -->
		</div>
	</div>
        <!--start-banner-regitration-->
        <div class="banner-orange">
		<div class="container">
			
                    <div class="banner-bottom">
                        <div class="container-fluid">
                            <section class="container">
                                <div class="container-page">
                                    <div class="col-md-6 feature-main">
                                        <p>
                                        Sei loggato come 
                                        <%HttpSession s= request.getSession();
                                        out.print(s.getAttribute("nome")+" "+s.getAttribute("cognome"));%>
                                        
                                                
                                        </p>
				
                                    </div>
                                    
		
                                    
                                </div>  
                            </section>
                        </div>
                    </div>
                            
                    <div class="clearfix"></div>
	</div>
        
	<!--end-banner-->
	
	
	
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-text">
				<p>Template By<a href="http://w3layouts.com/"> W3layouts</a></p>
			</div>
		</div>
		 <script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--End-footer-->			
</body>
</html>

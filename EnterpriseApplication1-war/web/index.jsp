<%-- 
    Document   : index
    Created on : 14-nov-2015, 18.19.35
    Author     : Andrea22
--%>

<!DOCTYPE html>
<html>
<head>
<title>HomeTogether</title>
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
					<li><a href="#contact" class="scroll">CONTACT</a><span> </span></li>
				</ul>
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
                                        <div class="col-lg-12" style="background: red; border-radius: 3px; padding: 15px">
                                        <h1>
                                            <strong>
                                                <span class="text-rotate" style="color:#f1c40f;">Find,Live,Share,Home
                                                </span>
                                            </strong>
                                            <span style="color : white">Together</span> 
                                        </h1>
                                        </div>
                                        <p>
                                                Via da casa per qualche giorno? Problema di alloggio per breve periodo?
                                        </p>
                                        <p>
                                                HOMETOGETHER è la soluzione! Chatta con i tuoi amici e scopri chi di loro ha voglia di condividere casa con te.
                                        </p>
                                        <p>
                                                Potrete scrivere tutte le esperienze che vivrete, sul vostro HomeDiary e condivederle con gli altri.
                                        </p>
                                        <p>
                                                Cosa aspetti? Iscriviti e inizia subito l'avventura!
                                        </p>
				
                                    </div>
                                    <div class="col-md-6 feature-main">
                                        <form action="RegistrationServlet"  role="form" method="post">
                                            <input type="hidden" name="action" value="registration">
                                        <h3>Iscriviti</h3>
                                        <br>
                                        <div class="form-group col-lg-6">
                                                <!--<label>Password</label>-->
                                                <input type="text" name="nome" class="form-control"   placeholder="Nome">
                                        </div>
                                        
                                        <div class="form-group col-lg-6">
                                                <!--<label>Password</label>-->
                                                <input type="text" name="cognome" class="form-control"  placeholder="Cognome">
                                        </div>
                                        
                                        <div class="form-group col-lg-12">
                                                <!--<label>Username</label>-->
                                                <input type="email" name="email" class="form-control"  placeholder="Email">
                                        </div>
                                        
                                        <div class="form-group col-lg-12">
                                                <!--<label>Repeat Email Address</label>-->
                                                <input type="email" name="r_email" class="form-control" id="" value="" placeholder="Ripeti email">
                                        </div>
				
                                        <div class="form-group col-lg-12">
                                                <!--<label>Password</label>-->
                                                <input type="password" name="password" class="form-control" id="" value="" placeholder="Nuova password">
                                        </div>
                                        
                                        <div class="form-group col-lg-12">
                                                <!--<label>Password</label>-->
                                                <input type="password" name="r_password" class="form-control" id="" value="" placeholder="Reinserisci la password">
                                        </div>
                                        <h4 style="color: white">Data di nascita</h4>
                                        <br>
                                        <div class="form-group col-lg-4">
                                                
                                                <select aria-label="Giorno" title="Giorno" name="giorno" class="form-control">
                                                    <option value="0" selected="1">Giorno</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                    <option value="13">13</option>
                                                    <option value="14">14</option>
                                                    <option value="15">15</option>
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                </select>  
                                        </div>
                                        
                                        <div class="form-group col-lg-4">
                                            <select aria-label="Mese" title="Mese" name="mese" class="form-control">
                                                <option value="0" selected="1">Mese</option>
                                                <option value="1">gen</option>
                                                <option value="2">feb</option>
                                                <option value="3">mar</option>
                                                <option value="4">apr</option>
                                                <option value="5">Mag</option>
                                                <option value="6">giu</option>
                                                <option value="7">lug</option>
                                                <option value="8">ago</option>
                                                <option value="9">set</option>
                                                <option value="10">ott</option>
                                                <option value="11">nov</option>
                                                <option value="12">dic</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group col-lg-4">
                                            <select aria-label="Anno" title="Anno" name="anno" class="form-control">
                                                <option value="0" selected="1">Anno</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                                <option value="2010">2010</option>
                                                <option value="2009">2009</option>
                                                <option value="2008">2008</option>
                                                <option value="2007">2007</option>
                                                <option value="2006">2006</option>
                                                <option value="2005">2005</option>
                                                <option value="2004">2004</option>
                                                <option value="2003">2003</option>
                                                <option value="2002">2002</option>
                                                <option value="2001">2001</option>
                                                <option value="2000">2000</option>
                                                <option value="1999">1999</option>
                                                <option value="1998">1998</option>
                                                <option value="1997">1997</option>
                                                <option value="1996">1996</option>
                                                <option value="1995">1995</option>
                                                <option value="1994">1994</option>
                                                <option value="1993">1993</option>
                                                <option value="1992">1992</option>
                                                <option value="1991">1991</option>
                                                <option value="1990">1990</option>
                                                <option value="1989">1989</option>
                                                <option value="1988">1988</option>
                                                <option value="1987">1987</option>
                                                <option value="1986">1986</option>
                                                <option value="1985">1985</option>
                                                <option value="1984">1984</option>
                                                <option value="1983">1983</option>
                                                <option value="1982">1982</option>
                                                <option value="1981">1981</option>
                                                <option value="1980">1980</option>
                                                <option value="1979">1979</option>
                                                <option value="1978">1978</option>
                                                <option value="1977">1977</option>
                                                <option value="1976">1976</option>
                                                <option value="1975">1975</option>
                                                <option value="1974">1974</option>
                                                <option value="1973">1973</option>
                                                <option value="1972">1972</option>
                                                <option value="1971">1971</option>
                                                <option value="1970">1970</option>
                                                <option value="1969">1969</option>
                                                <option value="1968">1968</option>
                                                <option value="1967">1967</option>
                                                <option value="1966">1966</option>
                                                <option value="1965">1965</option>
                                                <option value="1964">1964</option>
                                                <option value="1963">1963</option>
                                                <option value="1962">1962</option>
                                                <option value="1961">1961</option>
                                                <option value="1960">1960</option>
                                                <option value="1959">1959</option>
                                                <option value="1958">1958</option>
                                                <option value="1957">1957</option>
                                                <option value="1956">1956</option>
                                                <option value="1955">1955</option>
                                                <option value="1954">1954</option>
                                                <option value="1953">1953</option>
                                                <option value="1952">1952</option>
                                                <option value="1951">1951</option>
                                                <option value="1950">1950</option>
                                                <option value="1949">1949</option>
                                                <option value="1948">1948</option>
                                                <option value="1947">1947</option>
                                                <option value="1946">1946</option>
                                                <option value="1945">1945</option>
                                                <option value="1944">1944</option>
                                                <option value="1943">1943</option>
                                                <option value="1942">1942</option>
                                                <option value="1941">1941</option>
                                                <option value="1940">1940</option>
                                                <option value="1939">1939</option>
                                                <option value="1938">1938</option>
                                                <option value="1937">1937</option>
                                                <option value="1936">1936</option>
                                                <option value="1935">1935</option>
                                                <option value="1934">1934</option>
                                                <option value="1933">1933</option>
                                                <option value="1932">1932</option>
                                                <option value="1931">1931</option>
                                                <option value="1930">1930</option>
                                                <option value="1929">1929</option>
                                                <option value="1928">1928</option>
                                                <option value="1927">1927</option>
                                                <option value="1926">1926</option>
                                                <option value="1925">1925</option>
                                                <option value="1924">1924</option>
                                                <option value="1923">1923</option>
                                                <option value="1922">1922</option>
                                                <option value="1921">1921</option>
                                                <option value="1920">1920</option>
                                                <option value="1919">1919</option>
                                                <option value="1918">1918</option>
                                                <option value="1917">1917</option>
                                                <option value="1916">1916</option>
                                                <option value="1915">1915</option>
                                                <option value="1914">1914</option>
                                                <option value="1913">1913</option>
                                                <option value="1912">1912</option>
                                                <option value="1911">1911</option>
                                                <option value="1910">1910</option>
                                                <option value="1909">1909</option>
                                                <option value="1908">1908</option>
                                                <option value="1907">1907</option>
                                                <option value="1906">1906</option>
                                                <option value="1905">1905</option>
                                            </select>
                                        </div>
                                     
								
	
                                        <div data-type="radio" data-name="gender_wrapper">
                                            <div class="form-group col-lg-3">
                                                <input type="radio" name="sesso" value="1">
                                                <label style="color: white">Donna</label>
                                            </div>
                                            <div class="form-group col-lg-3">
                                                <input type="radio" name="sesso" value="2">
                                                <label style="color: white">Uomo</label>
                                            </div>
                                            <div class="form-group col-lg-3">
                                                <br>
                                            </div>
                                            <div class="form-group col-lg-3">
                                                <br>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <button type="submit" class="btn btn-primary form-group col-lg-4" style="font-size: 150%; background-color: red;  ">Iscriviti</button>
                                        </div>
                                        </form>

                                    </div>
		
                                    
                                </div>  
                            </section>
                        </div>
                    </div>
                            
                    <div class="clearfix"></div>
	</div>
        <!--end-banner-regitration-->
	<!--start-banner-->
	<div class="banner">
		<div class="container">
			<div class="banner-bottom">                    
                            <div class="col-md-4 banner-left">
                                <a><button>DOWNLOAD NOW</button></a>
                            </div>
                            <div class="col-md-4 banner-middle">
                                    <img src="images/app-Nexsus-1Prova.png" alt="" />
                            </div>
                            <div class="col-md-4 banner-right">
                                <a><button>LEARN MORE</button></a>
                            </div>
                            <div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-banner-->
	<!--start-feature-->
	<div class="feature" id="features">
		<div class="container">
			<div class="feature-main">
                                </P>
			</div>
				<div class="feature-bottom">
					<div class="col-md-6 feature-bottom-left">
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-1.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Upload</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-3.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Profile Page</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-5.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Connect Chat</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-6 feature-bottom-left">
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-2.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Easy Setting</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-4.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Fast Location</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-one">
							<div class="feature-left">
								<img src="images/feature-6.png" alt="" />
							</div>
							<div class="feature-right">
								<h4>Profile Page</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nasceturridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
	</div>
	<!--end-feature-->
	<!--start-news-->
	<div class="top-news">
	<div class="news">
		<div class="container">
			<div class="news-main">
				<h3>Appmo Newsletter</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>
			<div class="news-top">
				<input type="text" value="E-mail adres.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail adres..';}"/>
				<div class="contact-but">
						<input type="submit" value="SUBSCRIBE" />
				</div>
			</div>
			<div class="new-bottom">
				<img src="images/slide-back.png" alt="" />
			</div>
			<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 4
							  $("#slider4").responsiveSlides({
								auto: true,
								pager: false,
								nav: false,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						  </script>
						<!----//End-slider-script---->
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider4">
								<li>
									<div class="new-slid">
										<p>?  dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis ?</p>
										<h4>Mohamed Saed</h4>
										<img src="images/slide-1.png" alt="">
									</div>
								</li>
								<li>
									<div class="new-slid">
										<p>?  sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis ?</p>
										<h4>Cylon</h4>
										<img src="images/slide-2.png" alt="">
									</div>
								</li>
							</ul>
						</div>
				</div>
			</div>
		</div>
	<!--end-news-->
	<!--Slider-Starts-Here-->
				<script src="js/responsiveslides.min.js"></script>
			  <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--start-app1-->
	<div class="app1" id="countdown">
		<div class="container">
			<div class="app1-top">
				<h3>Appmo Newsletter</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>	
				<div class="app1-bottom">
					<div class="col-md-6 app1-left">
						<div class="app1-main">
							<span>03.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
						<div class="app1-main">
							<span>09.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
						<div class="app1-main">
							<span>03.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
					</div>
					<div class="col-md-6 app1-left">
						<div class="app1-main">
							<span>15.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
						<div class="app1-main">
							<span>10.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
						<div class="app1-main">
							<span>09.05.2014</span>
							<h4>dolor sit amet, consectetuer adipiscing elit</h4>
							<p>natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
	</div>
	<!--end-app1-->
	<!--start-screen-->
	<div class="screen">
		<div class="container">
			<div class="screen-top">
				<h3>Screenshots Of App</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>
			<div class="screen-bottom">
				<div class="col-md-3 screen-left">
					<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/screen-1.png" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>orem ipsum dolor sit amet, consectetuer adipiscing lit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis</span>
										</h2>
									</div>
								</a>
				</div>
				<div class="col-md-3 screen-left">
					<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/screen-2.png" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>orem ipsum dolor sit amet, consectetuer adipiscing lit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis</span>
										</h2>
									</div>
								</a>
				</div>
				<div class="col-md-3 screen-left">
					<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/screen-3.png" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>orem ipsum dolor sit amet, consectetuer adipiscing lit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis</span>
										</h2>
									</div>
								</a>
				</div>
				<div class="col-md-3 screen-left">
					<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/screen-4.png" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>orem ipsum dolor sit amet, consectetuer adipiscing lit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis</span>
										</h2>
									</div>
								</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-screen-->
	<!--start-member-->
	<div class="member" id="pricing">
		<div class="container">
			<div class="member-top">
				<h3>Member Packed</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>
			<div class="member-bottom">
				<div class="col-md-3 member-bottom-left">
					<div class="member-one">
						<div class="mem-back">
							<p>29<span>$</span></p>
							<label>monthly</label>
						</div>
						<div class="mem-two">
							<h5>1 Websites</h5>
							<h5>1 User</h5>
							<h5>2 gb Storage</h5>
							<h5>1000 GB Bandwith</h5>
							<h5>Support Ticjet System</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 member-bottom-left">
					<div class="member-one">
						<div class="mem-back">
							<p>50<span>$</span></p>
							<label>monthly</label>
						</div>
						<div class="mem-two">
							<h5>1 Websites</h5>
							<h5>1 User</h5>
							<h5>2 gb Storage</h5>
							<h5>1000 GB Bandwith</h5>
							<h5>Support Ticjet System</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 member-bottom-left">
					<div class="member-one">
						<div class="mem-back">
							<p>80<span>$</span></p>
							<label>monthly</label>
						</div>
						<div class="mem-two">
							<h5>1 Websites</h5>
							<h5>1 User</h5>
							<h5>2 gb Storage</h5>
							<h5>1000 GB Bandwith</h5>
							<h5>Support Ticjet System</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 member-bottom-left">
					<div class="member-one">
						<div class="mem-back">
							<p>152<span>$</span></p>
							<label>monthly</label>
						</div>
						<div class="mem-two">
							<h5>1 Websites</h5>
							<h5>1 User</h5>
							<h5>2 gb Storage</h5>
							<h5>1000 GB Bandwith</h5>
							<h5>Support Ticjet System</h5>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-member-->
	<!--end-team-->
	<div class="team" id="testimonials">
		<div class="container">
			<div class="team-top">
				<h3>Apmo Team</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>
			<div class="team-bottom">
				<div class="col-md-4 team-left">
					<img src="images/team-back.png" alt=""/>
					<div class="team-one">
						<img src="images/team-1.png" alt=""/>
						<h4>Mohamed Saed</h4>
						<h5>UI / UX</h5>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing Aenean commodo</p>
					</div>
				</div>
				<div class="col-md-4 team-left">
					<img src="images/team-back.png" alt=""/>
					<div class="team-one">
						<img src="images/team-2.png" alt=""/>
						<h4>Aya Mostafa</h4>
						<h5>Seo</h5>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing Aenean commodo</p>
					</div>
				</div>
				<div class="col-md-4 team-left">
					<img src="images/team-back.png" alt=""/>
					<div class="team-one">
						<img src="images/team-3.png" alt=""/>
						<h4>Osama Elwan</h4>
						<h5>Web Dsigne</h5>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing Aenean commodo</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-team-->
	<!--start-support-->
	<div class="support">
		<div class="container">
			<div class="support-main">
				<div class="col-md-3 support-left">
					<img src="images/support-1.png" alt=""/>
				</div>
				<div class="col-md-3 support-left">
					<img src="images/support-2.png" alt=""/>
				</div>
				<div class="col-md-3 support-left">
					<img src="images/support-3.png" alt=""/>
				</div>
				<div class="col-md-3 support-left">
					<img src="images/support-4.png" alt=""/>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-support-->
	<!--start-map-->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13807.03365156693!2d31.219684!3d30.10110455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14584035757b8e1b%3A0x7d32793a8a39412a!2sWarraq+Al+Hadar%2C+Warraq+Al+Arab%2C+Al+Warraq%2C+Giza+Governorate%2C+Egypt!5e0!3m2!1sen!2sin!4v1424255939192" frameborder="0" style="border:0"></iframe>
	</div>
	<!--end-map-->
	<!--start-contact-->
	<div class="contact" id="contact">
		<div class="container">
			<div class="contact-top">
				<h3>LEAVE US A THOUGHT</h3>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur</p>
			</div>
			<div class="contact-bottom">
				<div class="col-md-8 contact-left">
					<input type="text" value="Your Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name';}"/>
					<input type="text" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email';}"/>
				</div>
				<div class="col-md-4 contact-right">
					<h6>Your Company App Name<span>Cairo Egypt , St 145 in al nozha</span></h6>
					<p>00201026470241</p>
					<p><a href="mailto:example@email.com">Masedup@gmail.com</a></p>
					<p>Themeforest.net</p>
				</div>
				<div class="contact-textarea">
					<textarea value="Your Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Your Message</textarea>
				</div>
				<div class="contact-submit">
					<input type="submit" value="Submit" />
				</div>
			</div>
			<div class="social">
				<ul>
					<li><a href="#"><span class="fb"> </span></a></li>
					<li><a href="#"><span class="p"> </span></a></li>
					<li><a href="#"><span class="twt"> </span></a></li>
					<li><a href="#"><span class="g"> </span></a></li>
					<li><a href="#"><span class="rss"> </span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--end-contact-->
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

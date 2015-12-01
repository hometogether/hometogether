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
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
        <script type="text/javascript" src="bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/googleLogin.js"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>

        <script src="js/jquery-1.11.0.min.js"></script>
        <!---- start-smoth-scrolling---->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type='text/javascript' src='js/jquery.simple-text-rotator.min.js'></script>
        <link rel="stylesheet" href="css/simpletextrotator.css" type="text/css">

        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
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

        <!--FACEBOOK SDK-->  
        <div id="fb-root"></div>
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '518776728298231',
                    xfbml: true,
                    version: 'v2.5'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>

        <script src="js/Facebook.js">

        </script>
        <!--
          Below we include the Login Button social plugin. This button uses
          the JavaScript SDK to present a graphical Login button that triggers
          the FB.login() function when clicked.
        -->


       
        <!--END FACEBOOK LOGIN-->  
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
                        <li>
                            <div id="signin-button" class="show">
                                <div class="g-signin"
                                     data-callback="loginFinished"
                                     data-approvalprompt="force"
                                     data-clientid="914513079502-evc4u51vs3mijtfebssfqr0mjpk7cs2l.apps.googleusercontent.com"
                                     data-requestvisibleactions="http://schemas.google.com/CommentActivity"
                                     data-cookiepolicy="single_host_origin"
                                     data-scope="https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email">
                                </div>
                            </div>


                        </li>
                        <li><a href="#registration" class="scroll"><fb:login-button scope="public_profile,email,user_friends,user_photos,user_birthday,user_location" onlogin="testAPI()"></fb:login-button></a><span> </span></li>
                        <li><a href="#myModal" data-toggle="modal" data-target="#myModal">LOGIN</a><span> </span></li>

                    </ul>
                </div>

                <div class="modal fade" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">Log-in</h4>
                            </div>
                            <form action="LoginServlet" method="post">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input class="form-control" id="Email1" placeholder="Inserisci email" name="email" type="email">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input class="form-control" id="Password1" placeholder="Password" name="password" type="password">
                                    </div>

                                    <p class="text-right"><a href="#">Password dimenticata?</a></p>
                                </div>
                                <div class="modal-footer">
                                    <a href="#" data-dismiss="modal" class="btn">Close</a>
                                    <input type="hidden" name="action" value="login"/>
                                    <button type="submit" class="btn btn-primary" style="background: red">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- script-for-menu -->
                <script>
                    $("span.menu").click(function () {
                        $(" ul.navig").slideToggle("slow", function () {
                        });
                    });
                </script>
                <!-- script-for-menu -->
            </div>
        </div>
        <!--start-banner-regitration-->
        <div id="registration" class="banner-orange">
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
                                        <h3>Iscriviti</h3>
                                        <br>
                                        <input type="hidden" name="action" value="registration">
                                        <div class="form-group col-lg-6">
                                            <!--<label>Password</label>-->
                                            <input type="text" name="nome" class="form-control" id="nome" value="" placeholder="Nome">
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <!--<label>Password</label>-->
                                            <input type="text" name="cognome" class="form-control" id="cognome" placeholder="Cognome">
                                        </div>

                                        <div class="form-group col-lg-12">
                                            <!--<label>Username</label>-->
                                            <input type="email" name="email" class="form-control" id="email" placeholder="Email">
                                        </div>

                                        <div class="form-group col-lg-12">
                                            <!--<label>Repeat Email Address</label>-->
                                            <input type="email" name="r_email" class="form-control" id="r_email" placeholder="Ripeti email">
                                        </div>

                                        <div class="form-group col-lg-12" id="div_password">
                                            <!--<label>Password</label>-->
                                            <input type="password" name="password" class="form-control" id="password" value="" placeholder="Nuova password">
                                        </div>

                                        <div class="form-group col-lg-12" id="div_r_password">
                                            <!--<label>Password</label>-->
                                            <input type="password" name="r_password" class="form-control" id="r_password" placeholder="Reinserisci la password">
                                        </div>

                                        <div class="form-group col-lg-12">
                                            <!--<label>Password</label>-->
                                            <input type="text" name="localita" class="form-control" id="localita" placeholder="Inserisci la tua località">
                                        </div>

                                        <h4 style="color: white">Data di nascita</h4>
                                        <br>
                                        <div class="form-group col-lg-12">
                                            <input type="date" name="data_nascita" class="form-control" id="data_nascita">  

                                        </div>



                                        <div data-type="radio" data-name="gender_wrapper">
                                            <div class="form-group col-lg-3">
                                                <input type="radio" name="sesso" id="sessof" value="1">
                                                <label style="color: white">Donna</label>
                                            </div>
                                            <div class="form-group col-lg-3">
                                                <input type="radio" name="sesso" id="sessom" value="2">
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
                        <input type="text" value="E-mail adres.." onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'E-mail adres..';
                                }"/>
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
                        <input type="text" value="Your Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Your Name';
                                }"/>
                        <input type="text" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Your Email';
                                }"/>
                    </div>
                    <div class="col-md-4 contact-right">
                        <h6>Your Company App Name<span>Cairo Egypt , St 145 in al nozha</span></h6>
                        <p>00201026470241</p>
                        <p><a href="mailto:example@email.com">Masedup@gmail.com</a></p>
                        <p>Themeforest.net</p>
                    </div>
                    <div class="contact-textarea">
                        <textarea value="Your Message" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Message';
                                }">Your Message</textarea>
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
                $(document).ready(function () {
                    /*
                     var defaults = {
                     containerID: 'toTop', // fading element id
                     containerHoverID: 'toTopHover', // fading element hover id
                     scrollSpeed: 1200,
                     easingType: 'linear' 
                     };
                     */

                    $().UItoTop({easingType: 'easeOutQuart'});

                });
            </script>
            <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        </div>
        <!--End-footer-->			
    </body>
</html>

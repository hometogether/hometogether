<%-- 
    Document   : profile
    Created on : 29-gen-2016, 15.34.19
    Author     : Antonio
--%>
<?xml version="1.0" encoding="UTF-8"?>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--CSS-->
        <link href="css/bootstrap_1.css" rel='stylesheet' type='text/css' />
        <link href="css/bootstrap_1.min.css" rel='stylesheet' type='text/css' />
        <link href="css/bootstrap-theme_1.css" rel='stylesheet' type='text/css' />
        <link href="css/ProfileStyle.css" rel='stylesheet' type='text/css' />
        <link href="css/style_1.css" rel='stylesheet' type='text/css' />

        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="js/Facebook.js"></script>
        
        <!--CSS-->
        <%
            HttpSession s = request.getSession();
        %>
        
        <title>Profile Page</title>
        <!--MODAL PER SHOW IMMAGINE PROFILO-->
        <%@include file="modal-immagineProfilo.jsp"%>
        <!--MODAL PER LA MODIFICA DELLE INFO UTENTE-->
        <%@include file="modal-modInfo.jsp"%>
        <!--MODAL PER LA MODIFICA DEGLI INTERESSI-->
        <%@include file="modal-interessi.jsp"%>
    </head>
    
    <body>
        <!--HEADER-->
        <div class="header col-md-12">
            <!--NAVBAR-->
            <nav class="navbar navbar-default top-navbar">
                <div class="container-fluid">
                    <div class="navbar-header">
                    <!--Button visualizzato al collpase della navbar-->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                    </button>
                        <a class="navbar-brand logo-sx" href="#" style="position: relative;left: 15%;"><img alt="Brand" src="images/logoRettangolare.png"></a>
                    </div>
                    <!--COLLAPSE NAVBAR-->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <!--LISTA ELEMENTI DELLA NAVBAR-->
                        <!--<ul class="nav navbar-nav nav-top-list">
                            <li><a href="#">Link 1</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                        </ul>-->
                        <!--BARRA DI RICERCA-->
                        <form class="navbar-form navbar-left nav-top-list search-bar-form" role="search">
                            <div class="input-group col-md-12" style="text-align: center;">
                                <input type="text" class="form-control" placeholder="La tua meta" name="q">
                                <div class="input-group-btn" style="text-align: left">
                                    <button class="btn btn-default" type="submit" ><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                        <ul class="nav navbar-nav nav-top-list-rigth">
                            <li><a href="#"><i class="glyphicon glyphicon-inbox"></i></a></li>
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background: transparent; padding-top: 7%;">
                                <img src="<%=(String)s.getAttribute("foto")%>" class="profile-image img-circle"><b class="caret"></b></a>
                              <ul class="dropdown-menu colored-link">
                                  <li><a href="#"><i class="glyphicon glyphicon-home"></i><span> </span>Home</a></a></li>
                                <li><a href="#"> <i class="glyphicon glyphicon-cog"></i><span> </span>Impostazioni</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#" list-group-item><i class="glyphicon glyphicon-log-out"></i><span> </span>Log out</a></li>
                              </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--NAVBAR-->
        </div>
        <!--HEADER-->

        <!--CONTENT-->
        <div class="content col-md-12">
            <div class="banner-orange">
                <div class="container">
                    <div class="banner-bottom">
                        <div class="container-fluid">
                            <section class="container">
                                <div class="container-page">
                                    <div class="col-md-12">
                                        <div class="row">
                                          <!-- left column -->
                                          <br><br><br><br>
                                          <div class="col-md-3 col-sm-4 col-xs-4" style="background: #fff">
                                            <br>
                                            <div class="text-center img_container">
                                                <div class="the-buttons col-md-3 col-sm-4 col-xs-4">
                                                    <form action="ProfileServlet" method="post" id="upload" enctype="multipart/form-data">
                                                        <i class="glyphicon glyphicon-camera" id="white-camera"></i>
                                                        <span class="btn-file">
                                                            <input type="file" name="nomeFile" onchange="upload.submit();"/>
                                                            <button class="borderless-btn">Cambia immagine profilo</button>
                                                        </span>
                                                        <input id="action" type="hidden" value="add_profile_image" name="action" class="form-control"/>
                                                    </form>
                                                </div>
                                                <a href="#" data-toggle="modal" data-target="#avatar-modal"><img src="<%=(String)s.getAttribute("foto")%>" class="avatar profile-image-avatar" alt="avatar"/></a>
                                            </div>
   
                                              <br>
                                              <div class="panel panel-info">
                                                <div class="panel-heading colored">
                                                            Su di te
                                                        </div>

                                                        <div class="panel-body">
                                                            Vive a <span><%=(String)s.getAttribute("location")%></span>
                                                        </div>

                                                        <div class="panel-body">
                                                            Lavora presso
                                                        </div>

                                                        <div class="panel-body">
                                                            Nato il <span><%=(String)s.getAttribute("data")%></span>
                                                        </div>

                                                        <div class="panel-footer">
                                                            <div class="btn-group" role="group"> 
                                                                <button class="  btn-secodary borderless-btn" style="text-align: center;color: black" data-toggle="modal" data-target="#mod-info-modal">
                                                                    <i class="glyphicon glyphicon-info-sign"></i> Informazioni
                                                                </button>
                                                                <button class=" btn-secodary borderless-btn" style="text-align: center;color: black" data-toggle="modal" data-target="#mod-interessi">
                                                                    <i class="glyphicon glyphicon-music"></i> Interessi
                                                                </button>
                                                            </div>
                                                            
                                                        </div>
                                                        
                                                        
                                                    </div>

                                                    <ul class="list-group">
                                                        <li class="list-group-item list-group-item-info colored">
                                                          Amici Facebook
                                                        </li>
                                                        <li class="list-group-item">
                                                          <span class="pull-xs-right"><img src="http://lorempixel.com/200/200/people/9/" class="avatar img-circle" alt="avatar" height='40px' width='40px'></span>
                                                          Cras justo odio
                                                        </li>
                                                        <li class="list-group-item">
                                                          <span class="label label-default label-pill pull-xs-right">2</span>
                                                          Dapibus ac facilisis in
                                                        </li>
                                                        <li class="list-group-item">
                                                          <span class="label label-default label-pill pull-xs-right">1</span>
                                                          Morbi leo risus
                                                        </li>
                                                    </ul>
                                          </div>
                                          <div  class="col-md-9 col-sm-6 col-xs-8" style="position: relative; left: 8px">
                                              <a style="color:black"><h1><%=(String)s.getAttribute("nome")%><span> </span><%=(String)s.getAttribute("cognome")%></h1></a>
                                              <h3>Torino,Piemonte,Italia</h3>
                                          </div>
                                          <!-- edit form column -->
                                          <div class="col-md-9 col-sm-7 col-xs-8 personal-info" style="background: #fff; position: relative; left: 8px;">

                                            <!--<div class="alert alert-info alert-dismissable">
                                              <a class="panel-close close" data-dismiss="alert">×</a> 
                                              <i class="fa fa-coffee"></i>
                                              This is an <strong>.alert</strong>. Use this to show important messages to the user.
                                            </div>-->
                                              <br>
                                              <div class="panel-group">
                                                    <div class="panel panel-info">
                                                        <div class="panel-heading colored">
                                                            POST
                                                        </div>

                                                        <div class="panel-body">

                                                            Corpo

                                                        </div>

                                                        <div class="panel-footer">
                                                            Like,commenta,etc..
                                                        </div>

                                                    </div>
                                                    <br>
                                                    <div class="panel panel-info" >
                                                        <div class="panel-heading colored">
                                                            POST
                                                        </div>

                                                        <div class="panel-body">
                                                            Basic panel example
                                                        </div>

                                                        <div class="panel-footer">
                                                            Like,commenta,etc..
                                                        </div>

                                                    </div>
                                              </div>

                                          </div>
                                        </div>
                                      </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!--CONTENT-->

        <!--FOOTER-->
        <div class="footer col-md-12">
            <h1>FOOTER</h1>
        </div>
        <!--FOOTER-->
    </body>
    
</html>

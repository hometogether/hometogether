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
        <BASE href="http://localhost:8080/EnterpriseApplication1-war/">
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
        <%@include file="navbar.jsp" %>
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

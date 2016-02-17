<%-- 
    Document   : utenti
    Created on : 17-feb-2016, 11.14.49
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap_1.css" rel='stylesheet' type='text/css' />
        <link href="css/bootstrap_1.min.css" rel='stylesheet' type='text/css' />
        <link href="css/bootstrap-theme_1.css" rel='stylesheet' type='text/css' />
        <link href="css/ProfileStyle.css" rel='stylesheet' type='text/css' />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="js/following.js"></script>

        <title>Utenti trovati</title>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        <div class="content col-md-12 ">
            <br><br><br>
            <div class="container col-md-2" style="background: yellow">
                <h3>DESTRA</h3> 
            </div>
            <div class="col-md-8">
                <br>
                <c:forEach var="utente" items="${utente}">
                  <div class="col-md-12" style="padding: 0% 0% 0% 15%;border: 1px solid whitesmoke;border-radius: 2px;">
                    <div class="col-md-10" style="background: white;  border-radius: 2px; padding: 2% 2% 2% 0%;box-shadow: 0px 0px 1px #888;">
                        <div class="col-md-3">
                            <form action="RedirectServlet" role="form" method="get">    
                                <input type="hidden" name="action" value="goUserProfile">
                                <input type="hidden" name="idprofile" value="${utente.id}">
                                <button class="borderless-btn"><img src="${utente.foto_profilo}" class="avatar profile-image-avatar" style="border: 0px solid; box-shadow: 0px 0px 5px #888;"/></button>
                            </form>
                        </div>
                        <div class="col-md-9">
                            <div class="col-md-6">
                                <h3>${utente.nome}<span> </span>${utente.cognome}</h3>
                            </div>
                            <c:if test="${utente.id != id}">
                                <div class="col-md-6" style="text-align: right;">
                                    <button id="followbuton${utente.id}" type="button" class="btn btn-success" onClick=" 
                                            <c:set var="amici" value="0" /> 
                                            <c:forEach var="following" items="${profilo.following}">
                                                <c:if test="${following.id == utente.id}">
                                                    <c:set var="amici" value="1" /> 
                                                </c:if>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${amici==1}">
                                                    eliminafollow(${utente.id})">Stop Follow
                                                </c:when>    
                                                <c:otherwise>
                                                    follow(${utente.id})">Follow
                                                </c:otherwise>
                                            </c:choose>




                                    </button>
                                </div>
                            </c:if>
                            <div class="col-md-12">
                                <span>Vive a ${utente.comune.nome}</span> 
                                <p>Lavora presso ${utente.occupazione}</p> 
                            </div>
                        </div> 
                    </div>

                </div>  
                </c:forEach> 
            </div>
            <div class="col-md-2" style="background: blue">
                <h3>SINISTRA</h3>
            </div>
        </div>
    </body>
</html>

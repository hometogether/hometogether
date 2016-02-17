<%-- 
    Document   : modal-following
    Created on : 17-feb-2016, 17.25.15
    Author     : Andrea22
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="ejb.Interesse"%>
<%@page import="ejb.Interesse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>    <meta charset="utf-8"/>

<html lang="it">

    <script src="js/jquery-1.11.0.min.js"></script>
    
    <div class="modal fade" id="following-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header login_modal_header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel" style="color : white">Lista Following</h2>
                </div>
                <div class="modal-body login-modal">
                    
                    <div class="clearfix"></div>
                    <div>
                        <div id='todolist'>
                            <br>
                            <ul id="ulFollowing" class="list-inline"> 
                            <c:forEach items="${profilo.following}" var="utente">
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
                                            
                                            <div class="col-md-12">
                                                <span>Vive a</span>
                                                <p>Lavora presso</p>
                                            </div>
                                        </div> 
                                    </div>

                                </div>
                                
                            </c:forEach>
                            </ul>
                        </div>
                    </div>																												
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
                <div class="modal-footer login_modal_footer">
                </div>
            </div>
        </div>
    </div>
</html>






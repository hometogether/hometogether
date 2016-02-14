<%-- 
    Document   : modal-interssi
    Created on : 13-feb-2016, 10.05.35
    Author     : Antonio
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="ejb.Interesse"%>
<%@page import="ejb.Interesse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script src="js/interessi.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        $(document).ready(function () {
            $(document).on("click", "#add", function () {
                var item = $('input[name=additem]').val();
                if (item !== "") {
                    $('#ulInteressi').append('<li><div class="btn-group"><button class="btn-secondary borderless-btn" style="text-align: center;color: black">' + item + ' <button id="remove" type="button" class="btn-secondary close">&times;</button></button></div></li>');
                    $('#addinput').val('');
                }

            });

        });
        $(document).on("click", "#remove", function () {
            $(this).closest('li').remove();
        });
    </script>
    <div class="modal fade" id="mod-interessi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header login_modal_header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel" style="color : white">I tuoi interessi</h2>
                </div>
                <div class="modal-body login-modal">
                    <p>Verifica e aggiungi i tuoi interessi!</p>
                    <br/>
                    <div class="clearfix"></div>
                    <div>
                        <div id='additem'>
                            <form action="InterestServlet" role="form" method="post">

                                <input type='text' name='nomeinteresse' id="nomeinteresse">

                                <button id="add" type="button" class="btn btn-default" onClick="aggiungiInteresse()">Aggiungi interesse</button>

                            </form>
                        </div>
                        <div id='todolist'>
                            <c:forEach items="${interessi}" var="interesse">
                                <div id="${interesse.id}">
                                    <form action="InterestServlet" role="form" method="post">
                                        <button type="button" class="btn btn-default" onClick="rimuoviInteresse(${interesse.id})">${interesse.nome}</button>
                                    </form>
                                </div>
                            </c:forEach>

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

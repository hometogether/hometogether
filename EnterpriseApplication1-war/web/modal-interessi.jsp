<%-- 
    Document   : modal-interssi
    Created on : 13-feb-2016, 10.05.35
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
        $(document).on("click", "#add", function(){
            var item = $('input[name=additem]').val();
            if(item!==""){
               $('#ulInteressi').append('<li><div class="btn-group"><button class="btn-secondary borderless-btn" style="text-align: center;color: black">'+ item +' <button id="remove" type="button" class="btn-secondary close">&times;</button></button></div></li>');
               $('#addinput').val('');
            }
            
        });

       });
        $(document).on("click", "#remove", function(){
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
                                    <input type='text' name='additem' id="addinput"/>
                                    <button id="add">Aggiungi interesse</button>
                                </div>
                                <div id='todolist'>
                                    <ul id="ulInteressi">
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

var xhr = new XMLHttpRequest();
function aggiungiInteresse() {

    xhr.open('POST', 'InterestServlet');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    var nomeinteresse = $("#nomeinteresse").val();
    console.log('nome interesse =' + nomeinteresse);
    xhr.onload = function () {
        console.log('ohdonpiano');
        if (xhr.responseText.trim() === "0") {
            jQuery.noConflict();
            console.log("entro nel trim");
            //jQuery.noConflict();
            $("#nomeinteresse").val('');
            $('#ulInteressi').append('<li id="${interesse.id}"><div class="btn-group"><form action="InterestServlet" role="form" method="post"><button class="btn-secondary borderless-btn" style="text-align: center;color: black">'+ nomeinteresse +'</button><button id="remove" type="button" class="btn-secondary close" onClick="rimuoviInteresse(${interesse.id})">&times;</button></form></div></li>');
            

        } /*else {
         // $('#googleForm').submit();
         }*/

    };
    xhr.send('action=add&nomeinteresse=' + nomeinteresse);
}
   
function rimuoviInteresse(idinteresse) {

    xhr.open('POST', 'InterestServlet');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onload = function () {
        console.log('ohdonpiano');
        if (xhr.responseText.trim() === "0") {
            jQuery.noConflict();
            console.log("entro nel trim");
            //jQuery.noConflict();
            $("#"+idinteresse).remove();
            


        } /*else {
         // $('#googleForm').submit();
         }*/

    };
    xhr.send('action=remove&idinteresse=' + idinteresse);

}
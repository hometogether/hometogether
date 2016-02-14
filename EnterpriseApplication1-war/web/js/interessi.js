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
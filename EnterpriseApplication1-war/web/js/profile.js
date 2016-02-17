var xhr = new XMLHttpRequest();
function follow(id) {

    xhr.open('POST', 'ProfileServlet');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        console.log('ohdonpiano');
        if (xhr.responseText.trim() === "0") {
            console.log("sto seguendo l'utente!");
            
            $("#followbuton").val('Stop Follow');
            
            
        } else {
            console.log("errore!");
            // GESTIRE ERRORE
        }

    };
    xhr.send('action=follow&id=' + id);
}
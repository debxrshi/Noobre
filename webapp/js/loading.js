window.onload = function() {
    document.getElementById('fileUploadForm').onsubmit = function() {
        document.getElementById('btn-text').innerHTML = 'Analyzing...';
        document.querySelector('.icon').style.display = 'none'; // This line hides the cloud icon
        var dots = window.setInterval( function() {
            var wait = document.getElementById("btn-text");
            if ( wait.innerHTML.length > 13 ) 
                wait.innerHTML = "Analyzing";
            else 
                wait.innerHTML += ".";
        }, 200);
    };
};

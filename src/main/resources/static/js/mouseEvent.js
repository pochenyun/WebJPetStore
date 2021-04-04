var xmlHttpRequest;
xmlHttpRequest = new XMLHttpRequest();

function showInform(categoryId) {
    console.log(categoryId);
    xmlHttpRequest.open("GET", "categoryShowJsServlet?categoryId=" + categoryId, true);
    xmlHttpRequest.onreadystatechange = processResponse;
    xmlHttpRequest.send(null);
}


function processResponse() {
    if (xmlHttpRequest.readyState == 4) {
        if (xmlHttpRequest.status == 200) {
            var resp = xmlHttpRequest.responseText;
            //显示悬浮层
            var inform = document.getElementById("inform");
            inform.innerText = resp;
            inform.style.tableLayout
            inform.style.display = "inline-block";
            inform.style.backgroundColor = "rgb(147,112,219,0.1)";
            inform.style.color = "rgb(0,205,205)";
        }
    }
}

//隐藏悬浮层
function hiddenInform(event) {
    var informDiv = document.getElementById('inform');
    var x = event.clientX;
    var y = event.clientY;
    var divx1 = informDiv.offsetLeft;
    var divy1 = informDiv.offsetTop;
    var divx2 = informDiv.offsetLeft + informDiv.offsetWidth;
    var divy2 = informDiv.offsetTop + informDiv.offsetHeight;
    if (x < divx1 || x > divx2 || y < divy1 || y > divy2) {
        document.getElementById('inform').style.display = 'none';
    }
}
function updateCart(e){
    var quantity = e.value;
    var name = e.name;
    if(quantity === ""){
        return;
    }
    if(quantity === "0"){
        $.ajax({
            url:"/Cart/removeItemFromCart?workingItemId="+name,
            type:"GET",
            success:function (){
                var removePrice = parseFloat(document.getElementById("total" + name).textContent.substr(1));

                var line = document.getElementById("line"+name);
                line.remove();

                var subtotal = document.getElementById("subtotal");
                var text = subtotal.textContent.substr(1);
                subtotal.innerText = "$" + (parseFloat(text) - removePrice).toString();
            }
        })
        return;
    }
    $.ajax({
        url:"/Cart/updateQuantity",//请求的地址
        type:"GET",//请求方式
        dateType:"text",
        data:{"quantity1":quantity,
            "name":name},//传输的数据
        success:function(ret){
            var array = ret.split(",");
            var quantity1 = document.getElementById("num"+e.name);
            var total = document.getElementById("total"+e.name);
            var subtotal = document.getElementById("subtotal");

            quantity1.innerText = array[0];
            total.innerText = "$"+array[1];
            subtotal.innerText ="$"+ array[2];
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
        }
    })
}

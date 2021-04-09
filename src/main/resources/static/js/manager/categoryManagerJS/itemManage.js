function updateProduct(e){
    var itemId = e.name;
    var listPrice = document.getElementById("listPrice"+e.name).value;
    var unitCost = document.getElementById("unitCost"+e.name).value;
    var attribute1 = document.getElementById("attribute1"+e.name).value;
    var quantity = document.getElementById("quantity"+e.name).value;

    $.ajax({
        url:"/ItemManage/updateItem",//请求的地址
        type:"GET",//请求方式
        dateType:"text",
        data:{"itemId":itemId,
            "listPrice":listPrice,
            "unitCost":unitCost,
            "attribute1":attribute1,
            "quantity":quantity
        },//传输的数据
        success:function(ret){
            console.log(ret);
        },
        error:function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.status);
            console.log(XMLHttpRequest.readyState);
            console.log(textStatus);

        }
    })
}
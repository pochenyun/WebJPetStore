function updateProduct(e){
    var name = e.name;
    console.log(name)
    var productId = document.getElementById("productId"+e.name).innerText;
    var category = document.getElementById("category"+e.name).innerText;
    var name1 = document.getElementById("name"+e.name).value;
    var description = document.getElementById("description"+e.name).value;
    $.ajax({
        url:"/ProductManage/updateProduct",//请求的地址
        type:"get",//请求方式
        dateType:"text",
        data:{"productId":productId,
            "category":category,
            "name":name1,
            "description":description
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
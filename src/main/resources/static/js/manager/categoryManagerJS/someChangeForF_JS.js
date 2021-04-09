$(function ()
{
    $(".Js_delete").click(function ()
    {
        var name = $(this).attr("name")
        var button = document.getElementById("queding")
        button.name=name
        $(".f_delete").fadeIn(300);
    });
});

function deleteProduct(e){
    var url = e.name
    window.location.href = url
}

function  deleteItem(e) {
    var url = e.name
    alert(url)
    window.location.href = url
}
// $("document").ready(function()
// {
//     //点击弹出浮层
//     $("#show").click(function()
//     {
//         alert(123)
//         $("#show").fadeIn();
//     });
//     $("body").click(function () {
//         $("#show").fadeOut();
//     })
// });
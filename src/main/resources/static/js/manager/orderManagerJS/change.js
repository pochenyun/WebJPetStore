$(function ()
{
    $(".Js_edit").click(function ()
    {
        var valueOfOrderId = $(this).children('#value').text();
        console.log(valueOfOrderId);
        $('input#editId').val(valueOfOrderId);
    });
});
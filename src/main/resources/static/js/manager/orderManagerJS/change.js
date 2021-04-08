//编辑Order，把数据移到表中
$(function ()
{
    $(".Js_edit").click(function ()
    {
        var valueOfOrderId = $(this).children('#value').text();

        var parentTr = $(this).parent().parent();
        var valueOfShipAddress1 = parentTr.children('#address').children('#shipAddress1').text();
        var valueOfShipAddress2 = parentTr.children('#address').children('#shipAddress2').text();
        var valueOfShipCity = parentTr.children('#address').children('#shipCity').text();
        var valueOfShipZip = parentTr.children('#shipZip').text();
        var valueOfCourier = parentTr.children('#courier').text();
        console.log(valueOfOrderId  +" " + valueOfShipAddress1);
        $('input#editOrderId').val(valueOfOrderId);
        $('input#editShipAddress1').val(valueOfShipAddress1);
        $('input#editShipAddress2').val(valueOfShipAddress2);
        $('input#editShipCity').val(valueOfShipCity);
        $('input#editShipZip').val(valueOfShipZip);
        $('input#editCourier').val(valueOfCourier);
    });
});
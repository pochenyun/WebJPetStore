//删除选中的Order
$(function ()
{
    console.log("11111");
    $('span#deleteSome').click(function ()
    {
        var arrays = new Array();
        var items = document.getElementsByClassName('inputcheck');
        console.log(items.length);
        for (var i = 0; i < items.length; i++)
        {
            if (items[i].checked)
            {
                arrays.push(items[i].value);
            }
        }
        alert(arrays.length);
    });
});
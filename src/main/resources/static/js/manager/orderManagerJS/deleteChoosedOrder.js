//删除选中的Order
$(function ()
{
    $('span#deleteSome').click(function ()
    {
        var arrays = new Array();
        var items = document.getElementsByClassName('aa');
        for (var i = 0; i < items.length; i++)
        {
            if (items[i].checked)
            {
                arrays.push(items[i].id);
            }
        }

        for (var i = 0; i < arrays.length; i++)
        {
            console.log(arrays[i]);
        }

        $.ajax({
            type: "post",
            url: "/orderManager/changed",
            data:
            {
                "arrays":arrays
            },
            dataType: "json",//数据类型
            traditional:true,//防止深度序列化
            cache:false,
            async:false,
            success: function ()
            {
                console.log("success");
            }
        });

        for (var i = 0; i < arrays.length; i++)
        {
            $('input#' + arrays[i]).parent().parent().remove();
        }
    });
});
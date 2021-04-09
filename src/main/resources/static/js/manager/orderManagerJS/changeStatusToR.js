//改变选中的Order状态
$(function ()
{
    // var items = document.getElementsByClassName('isShipped');
    // console.log(items.length)
    // for (var i = 0; i < items.length; i++)
    // {
    //     if (items[i].textContent.trim() == "未发货")
    //     {
    //         console.log('11');
    //         $(button).css("color", "#FFF")//白色
    //     }
    //     else if (items[i].textContent.trim() == "已发货")
    //     {
    //         console.log('22');
    //         $(button).css("color", "#A9A9A9")//灰色
    //     }
    // }

    $('.isShipped').each(function ()
    {
        var statusText = $(this).children('span').text().trim();
        if (statusText == "未发货")
        {
            console.log('11');
            $(this).parent().children('.actions').children('.Js_delete').children('span.text').css("color", "#FFF")//白色
        } else if (statusText == "已发货")
        {
            console.log('22');
            $(this).parent().children('.actions').children('.Js_delete').children('span.text').css("color", "#A9A9A9")//灰色
        }
    })

    $('.Js_delete').click(function ()
    {
        var status;
        var changedOrderId = $(this).children('.value').text();
        var button = this;

        //status false 表示未发货，'P'
        var isShippedLabel = $('input#' + changedOrderId).parent().parent().children('.isShipped').children('span');
        var isShippedLabelText = isShippedLabel.text().trim();
        console.log(isShippedLabelText);
        if (isShippedLabelText == "未发货")
        {
            status = false;
            $(button).css("color", "#FFF")//白色
        }
        else if (isShippedLabelText == "已发货")
        {
            status = true;
            $(button).css("color", "#A9A9A9")//灰色
        }
        else
            console.log('Status error');

        console.log("1561515 " +status);

        if (!status)
        {
            $('.f_pormatBtn1').click(function ()
            {
                //console.log(changedOrderId);
                $.ajax({
                    type: "post",
                    url: "/orderManager/changeStatus",
                    data:
                        {
                            "changedOrderId": changedOrderId
                        },
                    dataType: "json",//数据类型
                    traditional: true,//防止深度序列化
                    cache: false,
                    async: false,
                    success: function ()
                    {
                        console.log("success");
                    }
                });

                isShippedLabel.text("已发货");
                $(button).children('.text').text('退货');
                $(button).css("color", "#A9A9A9")//灰色
                status = true;
            });
        }
        else if (status)
        {;
            $('.f_pormatBtn1').click(function ()
            {
                console.log("退货!")
                $(button).children('.text').text('发货');
                $(button).css("color", "#FFF")//白色
                status = false;
            });
        }
        else
        {
            console.log("ERROR!!!!!!!!!!!!!");
        }
        console.log("finish statue" + status);
    });
});
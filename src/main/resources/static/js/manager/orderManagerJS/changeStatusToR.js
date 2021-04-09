//改变选中的Order状态
$(function ()
{
    $('.isShipped').each(function ()
    {
        var statusText = $(this).children('span').text().trim();
        if (statusText == "未发货")
        {
            console.log('11');
            $(this).parent().children('.actions').children('.Js_delete').css("color", "#FFF")//白色
            $(this).parent().children('.actions').children('.Js_delete').children('.text').text('发货');
        } else if (statusText == "已发货")
        {
            console.log('22');
            $(this).parent().children('.actions').children('.Js_delete').css("color", "#A9A9A9")//灰色
            $(this).parent().children('.actions').children('.Js_delete').children('.text').text('退货');
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
                $('span.bbb').text("确定退货吗？");
                $(button).css("color", "#A9A9A9")//灰色
                status = true;
            });
        }
        else if (status)
        {;
            $('.f_pormatBtn1').click(function ()
            {
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

                console.log("退货!")
                isShippedLabel.text("已退货");
                $(button).children('.text').text('发货');
                $('span.bbb').text("确定退货吗？");
                $(button).css("color", "#FFF")//白色
                status = false;

                $('.'+changedOrderId).fadeOut(500);
            });
        }
        else
        {
            console.log("ERROR!!!!!!!!!!!!!");
        }
        console.log("finish statue" + status);
    });
});
//改变选中的Order状态
$(function ()
{
    $('.Js_delete').click(function ()
    {
        var changedOrderId = $(this).children('.value').text();

        $('.f_pormatBtn1').click(function ()
        {
            console.log(changedOrderId);
            $.ajax({
                type: "post",
                url: "/orderManager/changeStatus",
                data:
                    {
                        "changedOrderId":changedOrderId
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
            $('input#' + changedOrderId).parent().parent().children('.isShipped').children('span').text("已发货");
        });
    });
});
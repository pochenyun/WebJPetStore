//选中一个checkBox，其他都显示选中
$(function ()
{
    $('input.a').click(function ()
    {
        if ($(this).is(':checked'))
        {
            $('input.aa').prop("checked", true);
        }
        else
        {
            $('input.aa').prop("checked", false);
        }
    });
});
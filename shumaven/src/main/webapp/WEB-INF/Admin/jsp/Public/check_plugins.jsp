   <link href="Public/Default/css/plugins/iCheck/custom.css" rel="stylesheet">
   <script src="Public/Default/js/plugins/iCheck/icheck.min.js"></script>
    <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
            $("#checkAll").click(function(){
                $("input[name='xuanze[]']").attr("checked");
                $("input[name='xuanze[]']").parent().addClass("checked");
            })
            $("#noCheckAll").click(function(){
                $("input[name='xuanze[]']").removeAttr("checked");
                $("input[name='xuanze[]']").parent().removeClass("checked");
            })
            $("#checkOrther").click(function(){
                $("input[name='xuanze[]']").each(function(){
                    if($(this).parent().hasClass("checked")){
                        $(this).removeAttr("checked",' ');
                        $(this).parent().removeClass("checked");
                    }else{
                        $(this).attr("checked");
;                       $(this).parent().addClass("checked");
                    }
                })
            })
            $("#deleteAll").click(function(){
                if(confirm("确认删除选中项吗？")){
                    return true;
                }else{
                    return false;
                }
            })
        </script>

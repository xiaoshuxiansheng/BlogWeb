<%@page pageEncoding="UTF-8"%>
<div class="footer">
    <div class="pull-right">
        <a href="http://www.lcm.wang/">舒小摆子</a>
    </div>
    <div>
        <strong>请保持版权</strong>谢谢合作 &copy; 2014-2016
    </div>
</div>
</div>
<script type="text/javascript">
    function shifou(){
        if(confirm("年轻人，你真的想好了吗？")){
            return true;
        }else{
            return false;
        }
    }
</script>
</body>
</html>
        <!--  Mainly scripts -->
    <script src="Public/Default/js/jquery-2.1.1.js"></script>
    <script src="Public/Default/js/jquery.cookie.js"></script>
    <script src="Public/Default/js/inspinia.js"></script>
    <script src="Public/Default/js/bootstrap.min.js"></script>
    <script src="Public/Default/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="Public/Default/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- 
    Flot -->
    <script src="Public/Default/js/plugins/flot/jquery.flot.js"></script>
    <script src="Public/Default/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="Public/Default/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="Public/Default/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="Public/Default/js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Custom and plugin javascript -->

    <script src="Public/Default/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="Public/Default/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- 消息通知 -->
    <script src="Public/Default/js/plugins/gritter/jquery.gritter.min.js"></script>
    <!-- 自定义 -->
    <script src="Public/Default/identityjs/myjs.js" > </script>
	<!-- <script type="text/javascript" src="Public/Default/identityjs/jquery-1.8.0.min.js"></script> -->
<script>
    $(function(){
        $("#navs a").click(function(){
            $.cookie('click_url',$(this).attr('href'));
        })
        if($.cookie('click_url') != undefined){
            var s_url=$.cookie('click_url');
            var now_url = '';
            for(var i = 0;i<$("#side-menu li").length;i++){
                now_url=$("#side-menu li a").eq(i).attr("href");
                if(now_url == s_url){
                    $("#side-menu a").eq(i).parent().addClass("active");
                    $("#side-menu a").eq(i).parent().parent().parent().addClass("active");
                    $("#side-menu a").eq(i).parent().parent().addClass("in");
                }else{
                    $("#side-menu a").eq(i).parent().removeClass("active");
                }
            }
        }
    })


        </script>
    <!-- Toastr -->

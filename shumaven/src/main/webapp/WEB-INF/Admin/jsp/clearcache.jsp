<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>缓存清理</h2>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="row">
            <div class="col-lg-12">
                   <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <!-- <h5>All form elements <small>With custom checbox and radion elements.</small></h5> -->
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                        <div class="hr-line-dashed"></div>
                            <form method="post" class="form-horizontal" action="{:U('Maintain/doClear')}" enctype="multipart/form-data">
                                <div class="form-group has-success"><label class="col-sm-4 control-label">清理模板缓存</label>

                                    <div class="col-sm-3"><div class="checkbox i-checks"><label> <input type="checkbox" value="Cache" checked="checked" name = "data[]"> <i></i>清理模板缓存</label></div></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">清理数据缓存</label>

                                    <div class="col-sm-3"><div class="checkbox i-checks"><label> <input type="checkbox" value="Temp"  name = "data[]"> <i></i> 清理数据缓存 </label></div></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">清理数据目录</label>

                                    <div class="col-sm-3"><div class="checkbox i-checks"><label> <input type="checkbox" value="Data"  name = "data[]"> <i></i> 清理数据目录</label></div></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">清理日志文件</label>

                                    <div class="col-sm-3"><div class="checkbox i-checks"><label> <input type="checkbox" value="Logs"  name = "data[]"> <i></i>清理日志文件</label></div></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                               <div class="ibox-content">
                            <div class="text-center">
                            <input type="submit" value="点击清理" class="btn btn-primary" data-toggle="modal">
                            </div>

                    </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    <!-- start footer -->
                   <%@include file="Public/footer.jsp" %>
            <!-- end footer -->
        </div>
    <script src="Public/Default/js/plugins/iCheck/icheck.min.js"></script>
<script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
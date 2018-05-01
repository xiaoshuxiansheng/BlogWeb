<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
<!-- end left -->
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-10">
            <h2>网站邮件配置</h2>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="row">
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
                    <div class="panel blank-panel">

                        <div class="panel-heading">
                            <div class="panel-title m-b-md" style="text-align:center;"><h2>网站邮件设置</h2></div>
                            <div class="panel-options" >

                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-4"><i class="fa fa-laptop"></i>邮件配置</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-5"><i class="fa fa-desktop"></i>注册-用户模板</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-6"><i class="fa fa-signal"></i>注册-管理员模板</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-7"><i class="fa fa-bar-chart-o"></i>发表-管理员模板</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-8"><i class="fa fa-bar-chart-o"></i>评论-管理员模板</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-9"><i class="fa fa-bar-chart-o"></i>留言-用户模板</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="tab-content">
                                <div id="tab-4" class="tab-pane active">
                                    <form method="post" class="form-horizontal" action="{:U('Email/changeSet')}" enctype="multipart/form-data">
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">SMTP服务器</label>

                                            <div class="col-sm-8"><input type="text" class="form-control" name="smtpserver" required value = "{$arr.smtpserver}"></div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">SMTP服务器端口</label>

                                            <div class="col-sm-8"><input type="text" class="form-control" name="smtpserverport" required value = "{$arr.smtpserverport}"></div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label"> SMTP服务器的用户邮箱</label>

                                            <div class="col-sm-8"><input type="text" class="form-control" name="smtpusermail" required value = "{$arr.smtpusermail}"></div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">SMTP服务器的用户帐号</label>

                                            <div class="col-sm-8"><input type="text" class="form-control" name="smtpuser" required value = "{$arr.smtpuser}"></div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">SMTP服务器的用户密码</label>

                                            <div class="col-sm-8"><input type="text" class="form-control" name="smtppass" required value = "{$arr.smtppass}"></div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">用户注册 管理员是否收到邮件</label>
                                        <div class="col-sm-3">
                                                <select name="reg_set_admin">
                                                    <option value="0" <if condition = "$arr.reg_set_admin eq 0">selected</if>>是</option>
                                                    <option value="1" <if condition = "$arr.reg_set_admin eq 1">selected</if>>不是</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">用户发表文章 管理员是否收到邮件</label>
                                        <div class="col-sm-3">
                                                <select name="send_article_set">
                                                    <option value="0" <if condition = "$arr.send_article_set eq 0">selected</if>>是</option>
                                                    <option value="1" <if condition = "$arr.send_article_set eq 1">selected</if>>不是</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group has-success"><label class="col-sm-4 control-label">用户回复 管理员是否收到邮件</label>
                                        <div class="col-sm-3">
                                                <select name="comment_set">
                                                    <option value="0" <if condition = "$arr.comment_set eq 0">selected</if>>是</option>
                                                    <option value="1" <if condition = "$arr.comment_set eq 1">selected</if>>不是</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                    </form>
                                </div>
                                <link href="Public/Default/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
                                <div id="tab-5" class="tab-pane">
                                <form method="post" class="form-horizontal" action="{:U('Email/saveEmail')}" enctype="multipart/form-data">
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户注册用户收到邮件的标题</label>

                                        <div class="col-sm-8"><input type="text" class="form-control" name="reg_user_title" required value = "{$email.reg_user_title}"></div>
                                    </div>
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户注册用户收到邮件的内容 </label>
                                     <div class="col-sm-8">
                                    <script type="text/plain" name="reg_user_content" id="myEditor" style="height:510px;">
                                    <p>{$email.reg_user_content}</p>
                                    </script>
                                    </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                </form>
                                </div>
                                <div id="tab-6" class="tab-pane">
                                    <form method="post" class="form-horizontal" action="{:U('Email/saveEmail')}" enctype="multipart/form-data">
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户注册管理员收到邮件的标题</label>

                                        <div class="col-sm-8"><input type="text" class="form-control" name="reg_admin_title" required value = "{$email.reg_admin_title}"></div>
                                    </div>
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户注册管理员收到邮件的标题 </label>
                                     <div class="col-sm-8">
                                    <script type="text/plain" name="reg_admin_content" id="myEditor1" style="height:510px;">
                                    <p>{$email.reg_admin_content}</p>
                                    </script>
                                    </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                </form>
                                </div>
                                <div id="tab-7" class="tab-pane">
                                    <form method="post" class="form-horizontal" action="{:U('Email/saveEmail')}" enctype="multipart/form-data">
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户发文章管理员收到邮件的标题</label>

                                        <div class="col-sm-8"><input type="text" class="form-control" name="send_article_title" required value = "{$email.send_article_title}"></div>
                                    </div>
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户发文章管理员收到邮件的内容 </label>
                                     <div class="col-sm-8">
                                    <script type="text/plain" name="send_article_content" id="myEditor2" style="height:510px;">
                                    <p>{$email.send_article_content}</p>
                                    </script>
                                    </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                </form>
                                </div>
                                <div id="tab-8" class="tab-pane">
                                    <form method="post" class="form-horizontal" action="{:U('Email/saveEmail')}" enctype="multipart/form-data">
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户评论管理员收到邮件的标题</label>

                                        <div class="col-sm-8"><input type="text" class="form-control" name="send_comment_title" required value = "{$email.send_comment_title}"></div>
                                    </div>
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户评论管理员收到邮件的内容 </label>
                                     <div class="col-sm-8">
                                    <script type="text/plain" name="send_comment_content" id="myEditor3" style="height:510px;">
                                    <p>{$email.send_comment_content}</p>
                                    </script>
                                    </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                </form>
                                </div>
                                <div id="tab-9" class="tab-pane">
                                    <form method="post" class="form-horizontal" action="{:U('Email/saveEmail')}" enctype="multipart/form-data">
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户收到留言用户邮件的标题</label>

                                        <div class="col-sm-8"><input type="text" class="form-control" name="send_message_title" required value = "{$email.send_message_title}"></div>
                                    </div>
                                    <div class="form-group has-success"><label class="col-sm-4 control-label"> 用户收到留言用户邮件内容 </label>
                                     <div class="col-sm-8">
                                    <script type="text/plain" name="send_message_content" id="myEditor4" style="height:510px;">
                                    <p>{$email.send_message_content}</p>
                                    </script>
                                    </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                        <div class="text-center">
                                            <input type="submit" value="保存" class="btn btn-primary" data-toggle="modal">
                                        </div>
                                </form>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

    </div>
    <!-- start footer -->
    <!-- <script type="text/javascript" src="Public/Default/umeditor/third-party/jquery.min.js"></script> -->
<script src="Public/Default/js/inspinia.js">
</script>
    <%@include file="Public/footer.jsp" %>
    <script type="text/javascript" charset="utf-8" src="Public/Default/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="Public/Default/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="Public/Default/umeditor/lang/zh-cn/zh-cn.js"></script>
    <!-- end footer -->
</div>
<script>
    $(function(){
        var um = UM.getEditor('myEditor');
        var um1 = UM.getEditor('myEditor1');
        var um2 = UM.getEditor('myEditor2');
        var um3 = UM.getEditor('myEditor3');
        var um4 = UM.getEditor('myEditor4');
    })
</script>

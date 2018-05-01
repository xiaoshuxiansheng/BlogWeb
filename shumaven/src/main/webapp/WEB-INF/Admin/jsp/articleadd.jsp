<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<link rel="stylesheet" href="Public/Default/simditor/styles/simditor.css">
<link rel="stylesheet" href="Public/Default/simditor/styles/simditor-markdown.css">
<link href="Public/Default/jquery-upload-file/css/uploadfile.css" rel="stylesheet">
<link href="Public/Default/jquery-upload-file/css/uploadfile.custom.css" rel="stylesheet">
</head>
<!-- start left -->
<%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>添加文章</h2>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <form method="post" class="form-horizontal" action="{:U('Article/doadd')}" enctype="multipart/form-data">
        <div class="row">
            <div class="col-lg-7">
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
                                <div class="form-group has-success">
                                    <label class="col-sm-3 control-label">文章标题：</label>
                                    <div class="col-sm-9"><input type="text" class="form-control" name="title" required id="title"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success">
                                    <div class="col-sm-12">
                                      <div class="row">
                                        <label class="col-sm-3 control-label">查看文章密码：</label>
                                        <div class="col-md-3">
                                          <input class="form-control" type="text" placeholder="没有密码留空" name="articlepassword">
                                        </div>
                                        <label class="col-sm-3 control-label">封面是否显示：</label>
                                        <div class="col-md-3">
                                          <select name="viewtumb" id="" class="form-control">
                                            <option value="0" selected="true">是</option>
                                            <option value="1">否</option>
                                          </select>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success">
                                    <label class="col-sm-3 control-label">文章分类：</label>
                                    <div class="col-sm-3">
                                      <select name="fid" class="form-control m-b">
                                        <foreach name = "category" item = "vo">
                                        <option value="{$vo.id}">{$vo.html}{$vo.name}</option>
                                        </foreach>
                                    </select>
                                    </div>
                                    <label class="col-sm-3 control-label">文章样式：</label>
                                    <div class="col-sm-3">
                                      <select name="type" class="form-control m-b">
                                        <foreach name = "article_type" item = "vo" key = "k">
                                        <option value="{$article_type[$k]}">{$k}</option>
                                        </foreach>
                                    </select>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success">
                                    <textarea id="editor" placeholder="这里输入内容" name="content"></textarea>
                                </div>
                        </div>
                    </div>

            </div>
            <div class="col-lg-5">


            <div class="mail-box">
                  <div class="mail-body">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                        封面图片
                        </div>
                        <div class="panel-body">
                                <div class="col-sm-12"><div id="fileuploader4">上传</div></div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="pic" id = "pic" required="">
                                </div>
                        </div>
                    </div>
                  </div>
                </div>



                <div class="mail-box">
                  <div class="mail-body">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                        音乐文件(需要当前主题支持音乐文章)
                        </div>
                        <div class="panel-body">
                                <div class="col-sm-12"><div id="fileuploader1">上传</div></div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="mp3" id = "mp3">
                                </div>
                        </div>
                    </div>
                  </div>
                </div>


                <div class="mail-box">
                  <div class="mail-body">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                        附件文件(需要当前主题支持附件)
                        </div>
                        <div class="panel-body">
                          <div class="col-sm-12"><div id="fileuploader2">上传</div></div>
                          <div class="col-sm-12">
                              <input type="text" class="form-control" name="file" id = "file">
                          </div>
                        </div>
                    </div>
                  </div>
                </div>


                <div class="mail-box">
                  <div class="mail-body">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                        视频文件(需要当前主题支持附件)
                        </div>
                        <div class="panel-body">
                          <div class="col-sm-12"><div id="fileuploader3">上传</div></div>
                          <div class="col-sm-12">
                              <input type="text" class="form-control" name="video" id = "video">
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
        <div class="text-center" style="margin-bottom: 100px;">
        <input type="submit" value="添加" class="btn btn-w-m btn-primary">
        </div>
        </form>
    <!-- start footer -->
                   
<%@include file="Public/footer.jsp" %>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/module.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/uploader.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/hotkeys.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/simditor.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/marked.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/to-markdown.js"></script>
                    <script type="text/javascript" src="Public/Default/simditor/scripts/simditor-markdown.js"></script>
                    <script src="Public/Default/jquery-upload-file/js/jquery.form.js"></script>
                    <script src="Public/Default/jquery-upload-file/js/jquery.uploadfile.js"></script>
                    <script type="text/javascript">
                        $(document).ready(function() {
                            $("#fileuploader1").uploadFile({
                                url:"{:U('Article/ajax_upload',array('type'=>'mp3'))}", //上传URL
                                fileName:"mp3", //名称
                                maxFileCount:1, //上传文件数量
                                allowedTypes:"mp3,wam,wma,aac,mod,cd", //类型
                                formData: {name:"mp3"}, //通过FROM传过去的参数
                                onSuccess:function(files,data,xhr,pd){
                                    if(data.success){
                                        $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传成功</div>');
                                        $("#mp3").val(data.file_path);
                                    }else{

                                    }
                                },
                                onError: function(files,status,errMsg,pd){
                                    $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传失败</div>');
                                    alert('上传失败请检查,错误提示：'+errMsg);
                                }
                            });



                            $("#fileuploader2").uploadFile({
                                url:"{:U('Article/ajax_upload',array('type'=>'file'))}", //上传URL
                                fileName:"file", //名称
                                maxFileCount:1, //上传文件数量
                                allowedTypes:"rar, zip, doc, pdf", //类型
                                formData: {name:"file"}, //通过FROM传过去的参数
                                onSuccess:function(files,data,xhr,pd){
                                    if(data.success){
                                        $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传成功</div>');
                                        $("#file").val(data.file_path);
                                    }else{

                                    }
                                },
                                onError: function(files,status,errMsg,pd){
                                    $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传失败</div>');
                                    alert('上传失败请检查,错误提示：'+errMsg);
                                }
                            });


                            $("#fileuploader3").uploadFile({
                                url:"{:U('Article/ajax_upload',array('type'=>'video'))}", //上传URL
                                fileName:"video", //名称
                                maxFileCount:1, //上传文件数量
                                allowedTypes:"mp4, avi, wmv, mov,flv,3gp,navi,mkv", //类型
                                formData: {name:"video"}, //通过FROM传过去的参数
                                onSuccess:function(files,data,xhr,pd){
                                    if(data.success){
                                        $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传成功</div>');
                                        $("#video").val(data.file_path);
                                    }else{

                                    }
                                },
                                onError: function(files,status,errMsg,pd){
                                    $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传失败</div>');
                                    alert('上传失败请检查,错误提示：'+errMsg);
                                }
                            });


                            $("#fileuploader4").uploadFile({
                                url:"{:U('Article/ajax_upload',array('type'=>'pic'))}", //上传URL
                                fileName:"pic", //名称
                                maxFileCount:1, //上传文件数量
                                allowedTypes:"jpg, gif, png, jpeg", //类型
                                formData: {name:"pic"}, //通过FROM传过去的参数
                                onSuccess:function(files,data,xhr,pd){
                                    if(data.success){
                                        $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传成功</div>');
                                        $("#pic").val(data.file_path);
                                    }else{

                                    }
                                },
                                onError: function(files,status,errMsg,pd){
                                    $(".ajax-file-upload-filename:contains("+files+")").after('<div style = "color:red;">上传失败</div>');
                                    alert('上传失败请检查,错误提示：'+errMsg);
                                }
                            });
                        });
                    </script>
            <!-- end footer -->
        </div>
      <script>
        var editor = new Simditor({
          textarea: $('#editor'),
          upload:{
            url: "{:U('Article/doUploadPic')}",
            params: null,
            fileKey: 'upload_file',
            connectionCount: 3,
            leaveConfirm: '正在上传文件，如果离开上传会自动取消'
          },
          markdown: false,
          toolbar: [
          'title',
          'bold',
          'italic',
          'underline',
          'strikethrough',
          'fontScale',
          'color',
          'ol',
          'ul',
          'blockquote',
          'code',
          'table',
          'link',
          'image',
          'hr',
          'alignment',
          'markdown'
          ]
        });
      </script>

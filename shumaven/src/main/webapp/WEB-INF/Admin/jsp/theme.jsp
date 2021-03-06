<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content">
                <div class="row">
                <center><h1>主题</h1></center>
                <div class="col-lg-4">
                        <div class="ibox-content text-center">
                                <h1>默认主题</h1>
                                <div class="m-b-sm">
                                    <img alt="image" src="./Application/Home/View/Default/preview.jpg" width="100%;">
                                </div>
                                <p class="font-bold"><span class="label label-info">版本：2.2</span>
                                    <span class="label label-success">作者：MonkeyCode</span></p>
                                <div class="text-center">
                                            <a href="http://default.lcm.wang/" target="_blank"><button type="button" class="btn btn-primary">演示</button></a>
                                            <button type="button" class="btn btn-success" data-container="body" data-toggle="popover" data-placement="bottom" data-content="这是里程密博客程序自带的默认主题">说明</button>
                                             <button type="button" class="btn btn-w-m btn-warning" onclick="alert('此主题无设置方法')">设置</button>
                                            <button type="button" class="btn btn-w-m btn-danger" disabled="">卸载</button>
                                            <if condition = "$now_them eq 'Default'">
                                                <button type="button" class="btn btn-w-m btn-default" style="width: 100%;margin-top: 10px;" disabled="">当前已启用</button>
                                            <else />
                                                <a href="{:U('Theme/change_them',array('them'=>'Default'))}"><button type="button" class="btn btn-w-m btn-info" style="width: 100%;margin-top: 10px;">启用</button></a>
                                            </if>

                                </div>
                            </div>
                        </div>
                    <foreach name = "them_list" item = "vo">
                    <div class="col-lg-4">
                        <div class="ibox-content text-center">
                                <h1>{$vo.title}</h1>
                                <div class="m-b-sm">
                                    <img alt="image" src="{$vo.root_dir}{$vo.preview_file}" width="100%;">
                                </div>
                                <p class="font-bold"><span class="label label-info">版本：{$vo.versions}</span>
                                    <span class="label label-success">作者：{$vo.author}</span></p>
                                <div class="text-center">
                                            <a href="{$vo.demo_url}" target="_blank"><button type="button" class="btn btn-primary">演示</button></a>
                                            <button type="button" class="btn btn-success" data-container="body" data-toggle="popover" data-placement="bottom" data-content="{$vo.info_file}">说明</button>
                                             <a href="{$vo.root_dir}{$vo.set_file}" target="_blank"><button type="button" class="btn btn-w-m btn-warning">设置</button></a>
                                            <a href="{:U('Theme/del_them',array('dir_str'=>$vo['remove_file']))}" onclick="return shifou()"><button type="button" class="btn btn-w-m btn-danger">卸载</button></a>
                                            <if condition = "$now_them eq $vo['dir_name']">
                                                <button type="button" class="btn btn-w-m btn-default" style="width: 100%;margin-top: 10px;" disabled="">当前已启用</button>
                                            <else />
                                                <a href="{:U('Theme/change_them',array('them'=>$vo['dir_name']))}"><button type="button" class="btn btn-w-m btn-info" style="width: 100%;margin-top: 10px;">启用</button></a>
                                            </if>

                                </div>
                            </div>
                        </div>
                    </foreach>
                    </div>
                </div>
                </div>
            <!-- start footer -->
                    <include file="Public/footer" />
            <!-- end footer -->
            </div>
        </div>

        </div>

    </div>
</body>
</html>

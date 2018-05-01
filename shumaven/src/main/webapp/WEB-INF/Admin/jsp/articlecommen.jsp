<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2><a href="{:U('Article/index')}" ><button type="button" class="btn btn-w-m btn-success">返回文章列表</button></a></h2>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>爱我所选，选我所爱，爱里程密，爱生活！</h5>
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

                    <table class="table table-striped table-bordered table-hover dataTables-example" >
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>评论者姓名</th>
                        <th>评论者邮箱</th>
                        <th>评论者内容</th>
                        <th>回复楼层</th>
                        <th>发布时间</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <foreach name="list" item="vo" key="k">
                    <tr class="gradeU">
                        <td>{$vo.id}</td>
                        <td>{$vo.name}</td>
                        <td>{$vo.email}</td>
                        <td>{$vo.content}</td>
                        <td>{$vo.replay}</td>
                        <td>{$vo.ctime|date = "Y-m-d H:i:s",###}</td>
                        <td><if condition = "$vo.status eq 1"><span class="label label-danger">不显示</span><else /><span class="label label-info">显示</span></if></td>
                        <td>
                            <if condition = "$vo.istop eq 1">
                            <a href="{:U('Article/changeCommentStatus',array('id'=>$vo['id'],'status'=>0))}" ><button type="button" class="btn btn-w-m btn-success">显示</button></a>
                            <else />
                            <a href="{:U('Article/changeCommentStatus',array('id'=>$vo['id'],'status'=>1))}" ><button type="button" class="btn btn-w-m btn-warning">不显示</button></a>
                            </if>
                            <a href="{:U('Article/delComment',array('id'=>$vo['id']))}" onclick = "return shifou();"><button type="button" class="btn btn-w-m btn-danger">删除</button></a>
                        </td>
                    </tr>
                    </foreach>
                    </tbody>

                    </table>
                     {$page}
                    </div>
                </div>
            </div>
            </div>

    <!-- start footer -->
                   <%@include file="Public/footer.jsp" %>
            <!-- end footer -->
        </div>
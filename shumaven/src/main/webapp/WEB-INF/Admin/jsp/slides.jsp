<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>查看幻灯片</h2>
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
                        <th>幻灯片名称</th>
                        <th>幻灯片图片</th>
                        <th>幻灯片链接地址</th>
                        <th>添加时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <foreach name="arr" item="vo" key="k">
                    <tr class="gradeU">
                        <td>{$vo.id}</td>
                        <td>{$vo.title}</td>
                        <td><img src="{$vo.pic}" alt="" width="50px;"></td>
                        <td>{$vo.url}</td>
                        <td>{$vo.ctime|date = "Y-m-d H:i:s",###}</td>
                        <td>
                           <a href="{:U('Slides/edit',array('id'=>$vo['id']))}"><button type="button" class="btn btn-w-m btn-info">修改</button></a>
                            <a href="{:U('Slides/delete',array('id'=>$vo['id']))}" onclick = "return shifou();"><button type="button" class="btn btn-w-m btn-danger">删除</button></a>
                        </td>
                    </tr>
                    </foreach>
                    </tbody>
                    </table>

                    </div>
                </div>
            </div>
            </div>

    <!-- start footer -->
                    <%@include file="Public/footer.jsp" %>
            <!-- end footer -->
        </div>

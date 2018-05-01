<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>添加分类</h2>
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
                            <form method="post" class="form-horizontal" action="{:U('Category/doadd')}">
                                <div class="form-group has-success"><label class="col-sm-4 control-label">分类名称</label>

                                    <div class="col-sm-3"><input type="text" class="form-control" name="name" required></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-4 control-label">上级分类</label>

                                    <div class="col-sm-3">
                                    <select name="fid" class="form-control m-b">
                                        <option value="0">顶级分类</option>
                                        <foreach name = "arr" item = "vo">
                                        <option value="{$vo.id}">{$vo.html}{$vo.name}</option>
                                        </foreach>
                                    </select>
                                    </div>
                                </div>
                                 <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">分类样式</label>
                                <div class="col-sm-3">
                                 <select name="type" class="form-control m-b">
                                    <foreach name = "category_type" item = "vo" key = "k">
                                    <option value="{$category_type[$k]}">{$k}</option>
                                    </foreach>
                                </select>
                                 </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">分类排序</label>

                                    <div class="col-sm-3"><input type="text" class="form-control" name="sort" required value="0"></div>
                                </div>
                               <div class="ibox-content">
                            <div class="text-center">
                            <input type="submit" value="添加" class="btn btn-primary" data-toggle="modal">
                            </div>

                    </div>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
    <!-- start footer -->
                    <%@include file="Public/footer.jsp" %>
            <!-- end footer -->
        </div>


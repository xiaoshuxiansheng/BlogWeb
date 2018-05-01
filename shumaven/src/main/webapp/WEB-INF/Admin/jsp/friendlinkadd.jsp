<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="Public/top.jsp" %>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>友链操作</h2>
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
                        <c:choose>
                        <c:when test = "$Think.get.id neq ''">
                        <form method="post" class="form-horizontal" action="{:U('Friendlink/doUpdate',array('id'=>$arr['id']))}" enctype="multipart/form-data"></form>
                        </c:when>
                        <c:otherwise>
                        <form method="post" class="form-horizontal" action="{:U('Friendlink/doAdd')}" enctype="multipart/form-data">                 
						</c:otherwise>
						</c:choose>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">友链标题</label>
                                    <div class="col-sm-3"><input type="text" class="form-control" name="title" required='<c:choose><c:when test = "$Think.get.id neq ''">value = "{$arr.title}"</c:when></c:choose>'/>
                                    </div>
                                </div>
                            
                                <div class="hr-line-dashed"></div>
                                <div class="form-group has-success"><label class="col-sm-4 control-label">友链描述</label>

                                    <div class="col-sm-3"><textarea name="content" required="" class="form-control"><c:choose><c:when test = "$Think.get.id neq ''">{$arr.content}</c:when></c:choose></textarea></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-4 control-label">友链链接（前面加上http://）</label>
                                    <div class="col-sm-3"><input type="text" class="form-control" name="url" required <c:choose><c:when test = "$Think.get.id neq ''">value = "{$arr.url}"></c:when></c:choose>></div>
                                </div>
                               <div class="ibox-content">
                            <div class="text-center">
                            <input type="submit" value="执行" class="btn btn-primary" data-toggle="modal">
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


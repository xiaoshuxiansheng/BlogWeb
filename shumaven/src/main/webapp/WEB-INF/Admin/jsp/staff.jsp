<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.shumaven.Admin.pojo.blog_user"
    		import="com.shumaven.Admin.pojo.blog_info"
    		import="com.shumaven.Admin.pojo.blog_userdetail"
     %>
     <%
    String appContext= request.getContextPath();// 获得当前应用的根路径
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + appContext+"/" ;
     blog_user blog_user=(blog_user)session.getAttribute("blog_user");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>staff</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="Public/Default/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
  <div >
 <div style="margin: auto; text-align: center; width: 500px">
 										<dl>
 										<span style="border-width: 2;border-color: red;" class="add-on"><i class="icon-user"></i></span>
											<dt style="border-width: 2;border-color: red;">
												<strong id="name" >用户姓名:${blog_user.truename }</strong>
											</dt>
											<br>
											<span style="border-width: 2;border-color: red;" class="add-on"><i class="icon-pencil"></i></span>
											<dt><strong id="signTime">签到时间：${userdetail.signtime}</strong></dt>
											<br>
											<span style="border-width: 2;border-color: red;" class="add-on"><i class="icon-bell"></i></span>
											<dt><strong id="isVacate">申请请假：</strong></dt>
											<br>
											<span style="border-width: 2;border-color: red;" class="add-on"><i class="icon-pencil"></i></span>
											<dt><strong id="isAgree">批假状态：</strong></dt>
											<br>
															
										</dl>	
										
    <button class="btn btn-large btn-primary" type="button">签到</button>
 	<button class="btn btn-large btn-warning" type="button">请假</button>
    </div>
  </div>
  </body>
  <!--main script-->
  <script src="Public/Default/identityjs/jquery-1.8.0.min.js"></script>
   <script src="Public/Default/bootstrap/js/bootstrap.min.js"></script>
</html>
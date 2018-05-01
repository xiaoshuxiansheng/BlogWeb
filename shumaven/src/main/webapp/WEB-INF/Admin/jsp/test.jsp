<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
    <%@page import="java.util.List" %>
     <%@ page import="com.shumaven.Admin.pojo.blog_user"
    		import="com.shumaven.Admin.pojo.blog_info"
     %>
     

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" type="text/css" href="Public/Default/identitycss/inspector-stylesheet.css">
	<script type="text/javascript" src="Public/Default/identityjs/jquery-1.8.0.min.js"></script>
    <meta charset="utf-8" />
    <title></title>
    
    <script>
jQuery(document).ready(function($) {
	$('.chakan').click(function(){
		alert("文本")
		$('.theme-popover-mask').fadeIn(100);
		$('.user_info').slideDown(200);
	})
	$('.theme-poptit .close').click(function(){
		$('.theme-popover-mask').fadeOut(100);
		$('.user_info').slideUp(200);
	})

})
</script>
</head>
<body>
<a class="chakan" href="javascript:;">点击查看效果</a>
     <div class="user_info" " >
                     <dl>
						<dt><strong>姓名：你好啊</strong></dt>
						<br>
						<dt><strong>签到时间：1111111</strong></dt>
						<br>
						<dt><strong>是否请假：</strong></dt>
						<br>
						<dt><strong>是否批假：<button style="color: green;">同意</button ><button style="color: red;">禁止</button></strong></dt>
						<br>
						<dt><strong>请假状态：</strong></dt>
					</dl>
     </div>
     
     <div class="theme-buy">
<a class="btn btn-primary btn-large theme-login" href="javascript:;">点击查看效果</a>
</div>
<div class="theme-popover">
     <div class="theme-poptit">
          <a href="javascript:;" title="关闭" class="close">×</a>
          <h3>登录 是一种态度</h3>
     </div>
     <div class="theme-popbod dform">
           <form class="theme-signin" name="loginform" action="" method="post">
                <ol>
                     <li><h4>你必须先登录！</h4></li>
                     <li><strong>用户名：</strong><input class="ipt" type="text" name="log" value="lanrenzhijia" size="20" /></li>
                     <li><strong>密码：</strong><input class="ipt" type="password" name="pwd" value="***" size="20" /></li>
                     <li><input class="btn btn-primary" type="submit" name="submit" value=" 登 录 " /></li>
                </ol>
           </form>
     </div>
</div>
     <div class="theme-popover-mask"></div>
</body>
</html>
	
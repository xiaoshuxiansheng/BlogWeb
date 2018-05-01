<%@page import="net.sf.jsqlparser.statement.select.Top"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="com.shumaven.Admin.pojo.blog_user"
    		import="com.shumaven.Admin.pojo.blog_info"
    		import="com.shumaven.Admin.pojo.blog_userdetail"
     %>
    <%
    String appContext= request.getContextPath();// 获得当前应用的根路径
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + appContext+"/" ;
    
    blog_user blog_user=(blog_user)session.getAttribute("blog_user");//sesiion不能为空 
    blog_info newUpdate=(blog_info)session.getAttribute("newUpdate");//最新版本信息
    blog_info nowInfo=(blog_info)session.getAttribute("nowInfo");//当前版本信息
    List<blog_user> users=(List<blog_user>)session.getAttribute("users");//取得所有用户
    blog_userdetail detail=(blog_userdetail)request.getAttribute("userdetail");//获取userdetail
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
   <!--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 自定义css -->
	<link href="Public/Default/identitycss/inspector-stylesheet.css" rel="stylesheet">
   <!--  <title>后台管理</title> -->
    <link href="Public/Default/css/bootstrap.min.css" rel="stylesheet">
    <link href="Public/Default/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="Public/Default/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="Public/Default/css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet">
    <link href="Public/Default/css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="Public/Default/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="Public/Default/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="Public/Default/css/animate.css" rel="stylesheet">
    <link href="Public/Default/css/style.css" rel="stylesheet">
</head>
<style>
    th{
        text-align: center;
    }
    td{
        text-align: center;
    }
</style>
<body>
    <div id="wrapper">

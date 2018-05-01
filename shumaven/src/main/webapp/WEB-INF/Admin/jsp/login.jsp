<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    String appContext= request.getContextPath();// 获得当前应用的根路径
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + appContext+"/" ;%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>舒小摆子-登陆</title>
<!--路径问题../../../static/-->
    <link href="Public/Default/css/bootstrap.min.css" rel="stylesheet">
    <link href="Public/Default/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="Public/Default/css/animate.css" rel="stylesheet">
    <link href="Public/Default/css/style.css" rel="stylesheet">
<style type="text/css">
      #bg {
        position:fixed;
        top:0;
        left:0;
        width:100%;
        height:100%;
    }

    #bg img {
        position:absolute;
        left:0;
        right:0;
        bottom:0;
        margin:auto;
        width:100%;
        height:100%;
        z-index:-1;
    }  
</style>
</head>

<body class="gray-bg" style="">
     <div id="bg">
        <img src="Public/Default/img/5.jpg" alt="">
    </div>
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">　</h1>

            </div>
            <h3 style="color:#fff;">舒小摆子管理后台</h3>
            <!-- <p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views. -->
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            <!-- </p> -->
            <!-- <p>Login in. To see it in action.</p> -->
            <form class="m-t" role="form" action="admin/checklogin" method="post">
                <div class="form-group">
                    <input type="username" class="form-control" placeholder="用户名" required="" name="userid">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" required="" name="userpassword">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                <a href="javascript:void(0);" onclick="alert('想找回密码是吧?然而这并没有什么卵用,忘记密码的话请联系工作人员');"><small>忘记密码?</small></a>
                <!-- <p class="text-muted text-center"><small>Do not have an account?</small></p> -->
                <!-- <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a> -->
            </form>
            <p class="m-t"> <small>舒小摆子版权所有&copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts
    <script src="Public/Default/js/jquery-2.1.1.js"></script>
    <script src="Public/Default/js/bootstrap.min.js"></script>
 -->
</body>

</html>

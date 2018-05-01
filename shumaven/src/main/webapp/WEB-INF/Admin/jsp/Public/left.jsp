<%@page pageEncoding="UTF-8"%>

      <nav class="navbar-default navbar-static-side" role="navigation" id = "navs">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header" style="text-align:center;">
                        <div class="dropdown profile-element"> <span>
                        </span>
                        <span class="clear"> <span class="block m-t-xs" style = "color:#fff;"> <strong class="font-bold">管理员您好</strong>
                        </span> <span class="text-muted text-xs block">欢迎回来~~   </span> </span>
                    </div>
                    <div class="logo-element">
                        里程密
                    </div>
                </li>
                    <li class="active">
                  <a href="admin/index"><i class="fa fa-diamond"></i> <span class="nav-label">后台首页</span> <span class="label label-primary pull-right">NEW</span></a>
            </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-gear"></i> <span class="nav-label">网站设置</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li ><a href="admin/site">网站管理</a></li>
                            <li ><a href="admin/email">网站邮件设置</a></li>
                            <li ><a href="admin/admin">管理员修改</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-th-large"></i> <span class="nav-label">分类管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/category">查看分类</a></li>
                            <li ><a href="admin/categoryadd">添加分类</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-file-image-o"></i> <span class="nav-label">幻灯片管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/slides">查看幻灯片</a></li>
                            <li ><a href="admin/slidesadd">添加幻灯片</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-sitemap"></i> <span class="nav-label">邀请码管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a  href="admin/invite">查看邀请码</a></li>
                            <li ><a href="admin/inviteadd">添加邀请码</a></li>
                            <li ><a href="admin/invitecreate">生成邀请码</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-clipboard"></i> <span class="nav-label">文章管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/articleadd">添加文章</a></li>
                            <li><a href="admin/article">查看文章</a></li>
                            <li><a href="admin/articlerecovery">文章回收站</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-users"></i> <span class="nav-label">会员管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/user">会员查看</a></li>
                            <li><a href="admin/userrecovery">会员回收站</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-bank"></i> <span class="nav-label">主题管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/theme">主题查看</a></li>
                            <li><a href="admin/themedown" onclick="alert('静静等待 暂未开放');return false;">主题下载</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-bug"></i> <span class="nav-label">插件管理</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/plugs" onclick="alert('静静等待 暂未开放');return false;">插件浏览</a></li>
                            <li><a href="admin/plugsdown" onclick="alert('静静等待 暂未开放');return false;">插件下载</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-key"></i> <span class="nav-label">网站维护</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/clearcache">缓存清理</a></li>
                            <li><a href="admin/datarecovery">备份还原数据库</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="admin/index"><i class="fa fa-bookmark"></i> <span class="nav-label">友情链接</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="admin/friendlink">查看友链</a></li>
                            <li><a href="admin/friendlinkadd">添加友链</a></li>
                        </ul>
                    </li>
                <li>
                    <a href="Login/logout">
                        <i class="fa fa-sign-out"></i>退出登录
                    </a>
                </li>
            </ul>
        </nav>
        </div>
        <div id="page-wrapper" class="gray-bg" style="overflow: hidden;">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                            <form role="search" class="navbar-form-custom" method="post">
                                <div class="form-group">
                                    <input type="text" placeholder="人痛苦的本质都是对自己无能的愤怒" class="form-control" style="width: 500px;" disabled="">
                                </div>
                            </form>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <span class="m-r-sm text-muted welcome-message">每一个你不满意的现在,都有一个你不努力的曾经.</span>
                            </li>
                        <li>欢迎你，${blog_user.userName}</li><!--这个是编译器问题，并没有错误，正常运行  -->
                            <li>
                                <a data-toggle="modal" href="#myModal6">Good Luck</a>
                            </li>
                        </ul>

                    </nav>
                </div>

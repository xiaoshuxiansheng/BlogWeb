
<%@page pageEncoding="UTF-8" %>
<%@include file="Public/top.jsp" %>

        <!-- start left -->
               <%@include file="Public/left.jsp" %>
         <!-- end left -->
        <div class="row">
        <center><h1>程序信息</h1></center>
        <div class="col-lg-2">
                    <div class="widget navy-bg p-lg text-center">
                        <div class="m-b-md">
                            <i class="fa fa-shield fa-4x"></i>
                            <h1 class="m-xs">Power</h1>
                            <h3 class="font-bold no-margins">
                                作者
                            </h3>
                            <small>信息</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                        <div class="widget-head-color-box navy-bg p-lg text-center">
                            <div class="m-b-md">
                            <h2 class="font-bold no-margins">
                                Shu
                            </h2>
                                <small>一个幸福的码农</small>
                            </div>
                            <img src="Public/Uploads/default.png" class="img-circle circle-border m-b-md" alt="profile" width="128px;">
                            <div>
                                <span>我不惧怕敌人是因为我有队友</span> |
                            </div>
                        </div>
                        <div class="widget-text-box">
                            <h4 class="media-heading">他说</h4>
                            <p>爱生活 <br>欢迎使用SHU系统，希望一切更好</p>
                        </div>
                </div>
                <div class="col-lg-2">
                    <div class="widget lazur-bg p-lg text-center">
                        <div class="m-b-md">
                            <i class="fa fa-warning fa-4x"></i>
                            <h1 class="m-xs">Blog</h1>
                            <h3 class="font-bold no-margins">
                                程序
                            </h3>
                            <small>信息</small>
                        </div>
                    </div>
                    </div>
                <div class="col-lg-4">
                    <div class="widget lazur-bg p-xl">
                                <h2>
                                   后台管理
                                </h2>
                        <ul class="list-unstyled m-t-md">
                            <li>
                                <label>官网网址：</label>
                              
                                <a href="${nowInfo.website}">${newUpdate.website}</a>
                            </li>
                            <li>
                                <label>Github项目地址：</label>
                                <a href="${nowInfo.githubsite}">${newUpdate.githubsite}</a>
                            </li>
                            <li>
                                <label>交流群群号：</label>
                                    ${nowInfo.qqgroup}
                            </li>
                            <li>
                                <label>当前系统版本：</label>
                               ${nowInfo.version }
                            </li>
                            
                            <li>
                                <label>最新系统版本：</label>
                                ${newUpdate.version} <br>
                               ${nowInfo.version ge newUpdate.version?"恭喜您，当前是最新版本":"" } 
                            </li>
                            <li>
                                <label>更新日期：</label>
                                 ${newUpdate.updatedate}
                            </li>
                            <li>
                                <label>最新系统版本：</label>
                                <span style = "color:red;"><b> ${newUpdate.version}</b></span><br>
                                <a href="{$version.gxurl}" target="_blank"><button type="button" class="btn btn-w-m btn-warning" style="background: #CC9966;border-color: #CC9966;">点击查看详情</button></a>
                                <a href="" target="_blank" onclick="return shifou()"><button type="button" class="btn btn-w-m btn-warning" style="background: #CC0033;border-color: #CC0033;">点击进行更新</button></a>
                            </li>
                            <br>
                            <li>
                                <label>更新细节：</label>
                                ${newUpdate.content}
                            </li>
                        </ul>

                    </div>
                </div>

                </div>
            <!-- start footer -->
                    <%@include file="Public/footer.jsp" %>
            <!-- end footer -->
            </div>
        </div>

        </div>

    </div>
</body>
</html>

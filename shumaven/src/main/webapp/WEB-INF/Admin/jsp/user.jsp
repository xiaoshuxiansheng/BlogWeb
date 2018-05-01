<%@include file="Public/top.jsp"%>
<%@page pageEncoding="UTF-8"%>
<!-- start left -->
<%@include file="Public/left.jsp"%>
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>会员查看</h2>
	</div>
	<div class="col-lg-2"></div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>不要爱我</h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-wrench"></i>
					</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#">Config option 1</a></li>
						<li><a href="#">Config option 2</a></li>
					</ul>
					<a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
			</div>
			<div class="ibox-content">

				<table
					class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th>序号</th>
							<th>账号</th>
							<th>昵称</th>
							<th>注册时间</th>
							<th>上次登录时间</th>
							<th>上次登录IP</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="user" varStatus="st">
							<tr class="gradeU">
								<td>${st.count}</td>
								<td>${user.userId}</td>
								<td>${user.truename}</td>
								<td>${user.ctime}</td>
								<td>${user.lasttime}</td>
								<td>${user.ip}</td>
								<td><c:choose>
										<c:when test="${user.status eq 1}">
											<span style="color: red;">禁用</span>
										</c:when>
										<c:otherwise>
											<span class="label label-info">启用</span>
										</c:otherwise>
									</c:choose></td>
								<td id="caozuo">
									<button type="button" class="btn btn-w-m btn-danger"
										onclick="deleteUser('${user.userId}')">禁用</button>
									<button type="button" id="xiangxi"
										class="btn btn-w-m btn-danger userDetail" href="javascript:;"
										userId="${user.userId}">详细</button>
											<!--弹出信息框  start-->
								<div class="theme-popover">
									<div class="theme-poptit">
										<a href="javascript:;" title="关闭" class="close">×</a>
										<h3 style="margin: auto;">用户详情</h3>
									</div>
									<div class="theme-popbod dform">
										<dl>
											<dt>
												<strong id="name">姓名：${user.truename}</strong>
											</dt>
											<br>
											<dt>
												<strong id="signTime">签到时间：${ st.count}</strong>
											</dt>
											<br>
											<dt>
												<strong  id="isVacate" >是否请假：</strong>
											</dt>
											<br>
											<dt>
												<strong id="applyreason">请假状态：</strong>
											</dt>
											<br>
											<dt>
												<strong id="isagree">请假状态：</strong>
											</dt>
											<br>
											<dt>
												<strong id="">是否批假：
													<button  class="btn-agree" style="color: green;">同意</button>
													<button  class="btn-ban" style="color: red;">禁止</button>
												</strong>
											</dt>
											
										</dl>
									</div>
								</div>
								<div class="theme-popover-mask"></div>
								<!-- 弹出信息框 stop-->
								</td>
							
<!-- start footer -->
							</tr>
						</c:forEach>
						<%-- {$page} --%>
					</tbody>

				</table>

			</div>
		</div>
	</div>
</div>


<%@include file="Public/footer.jsp"%>
<!-- end footer -->
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<base href="<%=request.getContextPath()%>/">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>好辣火锅管理</title>
<style type="text/css">
.page-main {
	margin-left: 250px;
	margin-top: 150px;
	width: 82%;
	height: 100%;
	float: left;
	width: 82%;
}

.side-nav-item {
	display: block;
	padding: 10px 15px 10px 15px;
	background-color: #FFFFFF;
	cursor: pointer;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.item-title {
	background-color: #F5F5F5;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom: 1px solid #DDDDDD;
}

.panel-heading {
	margin-top: 5px;
	padding: 0;
	border-radius: 3px;
	border: 1px solid transparent;
	border-color: #DDDDDD;
}

.item-body {
	padding: 10px 15px 5px 15px;
	border-bottom: 1px solid #DDDDDD;
}

.item-second {
	margin-top: 5px;
	cursor: pointer;
}

.item-second a {
	display: block;
	height: 100%;
	width: 100%;
}

.at {
	color: red;
}

nav ul li {
	font-size: 20px;
	margin-top: 10px;
}

.top button {
	float: right;
	margin-left: 10px;
}

.top {
	clear: both;
	height: 70px;
	width: 50%;
	float: right;
}

.top #showTime {
	position: absolute;
	top: 10px;
	right: 150px;
}

.top .showUser {
	position: absolute;
	top: 10px;
	right: 20px;
}

.top .showUser img {
	width: 40px;
	height: 40px;
}

.summary .slogan img {
	margin-left: 20px;
	width: 40px;
	height: 40px;
}

.summary .summary-card {
	width: 250px;
	height: 160px;
	background-color: white;
	float: left;
	margin: 10px 30px 20px 30px;
}

.smallIcon {
	width: 50px;
	height: 50px;
}

.cardContent {
	margin: 20px;
}

.cardEnglish {
	letter-spacing: 1px;
	font-size: 15px;
	color: white;
	margin-left: 20px;
	font-size: 15px;
}

.cardChinese {
	color: white;
	margin-left: 20px;
}

.backText {
	font-size: 30px;
	line-height: 160px;
	text-align: center;
	margin-left: 50px;
}

tr th {
	text-align: center;
	line-height: 30.8px;
}

tr td {
	text-align: center;
	margin-top: 20px;
}
</style>
<link rel="stylesheet" href="css/styleRotate.css">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="dist/wc-motion-chart.js"></script>

</head>
<style type="text/css">
.iframe {
	border: 0;
	height: 100px;
	width: 50%;
	position: absolute;
	right: 2px;
	top: 2px;
}

</style>
 <script>
	(function(T, h, i, n, k, P, a, g, e) {
		g = function() {
			P = h.createElement(i);
			a = h.getElementsByTagName(i)[0];
			P.src = k;
			P.charset = "utf-8";
			P.async = 1;
			a.parentNode.insertBefore(P, a)
		};
		T["ThinkPageWeatherWidgetObject"] = n;
		T[n] || (T[n] = function() {
			(T[n].q = T[n].q || []).push(arguments)
		});
		T[n].l = +new Date();
		if (T.attachEvent) {
			T.attachEvent("onload", g)
		} else {
			T.addEventListener("load", g, false)
		}
	}(window, document, "script", "tpwidget",
			"//widget.seniverse.com/widget/chameleon.js"))
</script>
<script>
	tpwidget("init", {
		"flavor" : "bubble",
		"location" : "WX4FBXXFKE4F",
		"geolocation" : "enabled",
		"position" : "top-right",
		"margin" : "0px 400px",
		"language" : "zh-chs",
		"unit" : "c",
		"theme" : "chameleon",
		"uid" : "U07DCE6B2A",
		"hash" : "4791f55e83882ca0a76c704f49084434"
	});
	tpwidget("show");
</script>
<body>

	<div id="wrapper" class="toggled">
		<div class="overlay"></div>

		<!-- Sidebar -->
		<nav class="navbar navbar-inverse navbar-fixed-top"
			id="sidebar-wrapper" role="navigation">
			<ul class="nav sidebar-nav">
				<li class="sidebar-brand"><a href="#">好辣火锅管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-home"></i>首页</a></li>
				<li><a href="#"><i class="fa fa-fw fa-folder"></i>买单结算</a></li>
				<li><a href="#"><i class="fa fa-fw fa-file-o"></i>前台服务</a></li>
				<li><a href="#item-food" id="headfood" data-toggle="collapse"
					data-parent="#accordion"><i class="fa fa-fw fa-cog"></i>菜品管理</a></li>
				<li>

					<div id="item-food" class="panel-collapse collapse">
						<div class="item-body">
							<ul class="list-unstyled">
								<li class="item-second"><a href="a.html">菜品列表</a></li>
								<li class="item-second"><a href="b.html">添加菜品</a></li>
							</ul>
						</div>
					</div>

				</li>
				<li><a href="#item-vip" id="headvip" data-toggle="collapse"
					data-parent="#accordion"><i class="fa fa-fw fa-bank"></i>会员管理</a></li>
				<li>

					<div id="item-vip" class="panel-collapse collapse">
						<div class="item-body">
							<ul class="list-unstyled">
								<li class="item-second"><a href="a.html">会员列表</a></li>
								<li class="item-second"><a href="b.html">添加会员</a></li>
							</ul>
						</div>
					</div>

				</li>
				<li><a href="#item-instance" id="headinstance"
					data-toggle="collapse" data-parent="#accordion"><i
						class="fa fa-fw fa-dropbox"></i>财务管理</a></li>
				<li>
					<div id="item-instance" class="panel-collapse collapse">
						<div class="item-body">
							<ul class="list-unstyled">
								<li class="item-second"><a href="a.html">订单列表</a></li>
								<li class="item-second"><a href="b.html">日结算</a></li>
								<li class="item-second"><a href="b.html">总结算</a></li>
							</ul>
						</div>
					</div>

				</li>
				<li><a href="#item-store" id="headstore" data-toggle="collapse"
					data-parent="#accordion"><i class="fa fa-fw fa-twitter"></i>库存管理</a></li>
				<li>
					<div id="item-store" class="panel-collapse collapse">
						<div class="item-body">
							<ul class="list-unstyled">
								<li class="item-second"><a href="a.html">在线订货</a></li>
								<li class="item-second"><a href="b.html">导入入库单</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li><a href="#item-people" id="peopleku" data-toggle="collapse"
					data-parent="#accordion"><i class="fa fa-fw fa-twitter"></i>人员管理</a></li>
				<li>
					<div id="item-people" class="panel-collapse collapse">
						<div class="item-body">
							<ul class="list-unstyled">
								<li class="item-second"><a
									href="<%=request.getContextPath()%>/staff/staffList.do">员工列表</a></li>
								<li class="item-second"><a href="jsp/AddStaff.jsp">添加员工</a></li>
								<li class="item-second"><a href="b.html">发放薪资</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</nav>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<button type="button" class="hamburger is-closed animated fadeInLeft"
				data-toggle="offcanvas">
				<span class="hamb-top"></span> <span class="hamb-middle"></span>
			    <span class="hamb-bottom"></span>
			</button>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2"></div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
		<iframe class="iframe" src="jsp/top.jsp"></iframe>
	</div>
	<div class="page-main">
		<table class="table table-bordered">
			<tr>
				<th>编号</th>
				<th>职位</th>
				<th>姓名</th>
				<th>性别</th>
				<th>手机号码</th>
				<th>员工密码</th>
				<th>员工薪资</th>
				<th>操作</th>
			</tr>

			<c:forEach var="staff" items="${list}">
				<tr>
					<td>${staff.staffId }</td>
					<td>${staff.staffPosition }</td>
					<td>${staff.staffName }</td>
					<td>${staff.staffSex }</td>
					<td>${staff.staffPhone }</td>
					<td>${staff.staffPassword }</td>
					<td>${staff.staffSalary }</td>
					<td>
					<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#staffEditDialog" onclick= "editStaff(${staff.staffId})">修改</a>
					<a class="btn btn-danger btn-xs" onclick="deleteStaff(${staff.staffId})">删除</a>
					</td>
				</tr>

			</c:forEach>
		</table>

		<div class="pager">
			<font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第
				${page.pageNow} 页</font> <a href="staff/staffList.do?pageNow=1">首页</a>
			<c:choose>
				<c:when test="${page.pageNow - 1 > 0}">
					<a href="staff/staffList.do?pageNow=${page.pageNow - 1}">上一页</a>
				</c:when>
				<c:when test="${page.pageNow - 1 <= 0}">
					<a href="staff/staffList.do?pageNow=1">上一页</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${page.totalPageCount==0}">
					<a href="staff/staffList.do?pageNow=${page.pageNow}">下一页</a>
				</c:when>
				<c:when test="${page.pageNow + 1 < page.totalPageCount}">
					<a href="staff/staffList.do?pageNow=${page.pageNow + 1}">下一页</a>
				</c:when>
				<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
					<a href="staff/staffList.do?pageNow=${page.totalPageCount}">下一页</a>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${page.totalPageCount==0}">
					<a href="staff/staffList.do?pageNow=${page.pageNow}">尾页</a>
				</c:when>
				<c:otherwise>
					<a href="staff/staffList.do?pageNow=${page.totalPageCount}">尾页</a>
				</c:otherwise>
			</c:choose>
		</div>


	</div>
	<!-- /#wrapper -->


<!-- modal -->
<div class="modal fade" id="staffEditDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改员工信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_staff_form">
					<input type="hidden" id="edit_staffId" name="staffId"/>
					<div class="form-group">
						<label for="editStaffPos" class="col-sm-2 control-label">职位</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffPos" placeholder="职位名称" name="staffPosition" />
						</div>
					</div>
					<div class="form-group">
						<label for="editStaffName" class="col-sm-2 control-label">员工姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffName" placeholder="员工姓名" name="staffName" />
						</div>
					</div>
					<div class="form-group">
						<label for="editStaffSex" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffSex" placeholder="性别" name="staffSex" />
						</div>
					</div>
					<div class="form-group">
						<label for="editStaffPhone" class="col-sm-2 control-label">手机号码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffPhone" placeholder="手机号码" name="staffPhone" />
						</div>
					</div>
						<div class="form-group">
						<label for="editStaffPass" class="col-sm-2 control-label">员工密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffPass" placeholder="密码" name="staffPassword" />
						</div>
					</div>	<div class="form-group">
						<label for="editStaffSalary" class="col-sm-2 control-label">员工薪资</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_staffSalary" placeholder="员工薪资" name="staffSalary" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateStaff()">保存修改</button>
			</div>
		</div>
	</div>
</div>

<!-- /modal -->


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var trigger = $('.hamburger'), overlay = $('.overlay'), isClosed = false;

							trigger.click(function() {
								hamburger_cross();
							});

							function hamburger_cross() {

								if (isClosed == false) {
									overlay.hide();
									trigger.removeClass('is-open');
									trigger.addClass('is-closed');
									isClosed = false;
								} else {
									overlay.show();
									trigger.removeClass('is-closed');
									trigger.addClass('is-open');
									isClosed = true;
								}
							}

							/* $('[data-toggle="offcanvas"]').click(function() {
								$('#wrapper').toggleClass('toggled');
							}); */
						});
		
		function editStaff(id) {
			$.ajax({
				type:"get",
		        url:"staff/staffInfo.do",
		        data:{"id":id},
		        dataType:"json",
		        success:function(data) {
		        	console.log(data);
		            $("#edit_staffId").val(data.staffId);
		            $("#edit_staffPos").val(data.staffPosition);
		            $("#edit_staffName").val(data.staffName);
		            $("#edit_staffSex").val(data.staffSex);
		            $("#edit_staffPhone").val(data.staffPhone);
		            $("#edit_staffPass").val(data.staffPassword);
		            $("#edit_staffSalary").val(data.staffSalary);
			}
			});
			
		}
		
		function updateStaff() {
			$.post("staff/update.do",$("#edit_staff_form").serialize(),function(data){
				if(data =="OK"){
					alert("客户信息更新成功！");
					window.location.reload();
				}else{
					alert("客户信息更新失败！");
					window.location.reload();
				}
			});
		}
		
		function deleteStaff(id) {
			if (confirm('确认删除该员工？')) {
				$.post("staff/delete.do",{"id":id},function(data){
					if(data == "OK"){
						alert('删除成功！');
						window.location.reload();
					}
					else{
						alert('删除失败！');
						window.location.reload();
					}
				});
				
			}
			
		}
		
	</script>
</body>
</html>
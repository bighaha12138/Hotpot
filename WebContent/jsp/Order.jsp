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
				<li><a href="table/tableList.do"><i class="fa fa-fw fa-file-o"></i>前台服务</a></li>
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
								<li class="item-second"><a href="staff/staffListwith.do">发放薪资</a></li>
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
	<form action="order/addOrder.do" method="post">
		<table class="table table-bordered">
			<tr>
				<th>图片</th>
				<th>名称</th>
				<th>售价</th>
				<th>库存</th>
				<th>选购数量</th>
				<th>是否热门</th>
			</tr>

			<c:forEach var="food" items="${list}">
				<tr>
					<td>${food.foodPic }</td>
					<td>${food.foodName }</td>
					<td>${food.sellPrice }</td>
					<td>${food.foodStock }</td>
					<td><input type="text" placeholder="数量" name="orderNum"/>
					<input type="hidden" value="${food.foodName }" name="foodName"/>
					<input type="hidden" value="${food.sellPrice }" name="foodSellPrice"/>
					<input type="hidden" value="${tableNum }" name="tableNum"/>
					</td>
					<td>${food.foodStatus == 1 ?'热门':'非热门'}</td>
					
				</tr>
			</c:forEach>
			<tr><td colspan="5"><input type="submit" value="提交"/></td></tr>
		</table>
</form>
	

	</div>
	<!-- /#wrapper -->





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
		

		
	</script>
</body>
</html>
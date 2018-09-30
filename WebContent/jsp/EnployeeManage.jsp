<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>好辣火锅管理</title>
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/top.css" />
<link rel="stylesheet" type="text/css" href="css/all.css" />
</head>
<body>

	<div id="wrapper" class="toggled">
		<div class="overlay"></div>

		<!-- Sidebar -->
		<nav class="navbar navbar-inverse navbar-fixed-top"
			id="sidebar-wrapper" role="navigation">
			<ul class="nav sidebar-nav">
				<li class="sidebar-brand"><a href="#">好辣火锅管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-home"></i> 首页</a></li>
				<li><a href="#"><i class="fa fa-fw fa-folder"></i> 买单结算</a></li>
				<li><a href="#"><i class="fa fa-fw fa-file-o"></i> 前台服务</a></li>
				<li><a href="#"><i class="fa fa-fw fa-cog"></i> 菜品管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-bank"></i> 会员管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-dropbox"></i> 财务管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-twitter"></i> 库存管理</a></li>
				<li><a href="#"><i class="fa fa-fw fa-twitter"></i> 员工管理</a></li>
			</ul>
		</nav>
		<!-- /#sidebar-wrapper -->
		<iframe class="iframe"
			src="<%=request.getContextPath()%>/jsp/top.jsp"></iframe>
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<button type="button" class="hamburger is-closed animated fadeInLeft"
				data-toggle="offcanvas">
				<span class="hamb-top"></span> <span class="hamb-middle"></span> <span
					class="hamb-bottom"></span>
			</button>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2"></div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<script type="text/javascript">
		$(document).ready(
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

							$('[data-toggle="offcanvas"]').click(function() {
								$('#wrapper').toggleClass('toggled');
							});
						});
	</script>
</body>
</html>
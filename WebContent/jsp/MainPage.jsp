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
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
nav ul li {
	font-size: 20px;
	margin-top: 10px;
}
.top button {
	float: right;
	margin-left: 10px;
}
.top{
	clear:both;
	height: 70px;
	width: 50%;
	float: right;
}

.top #showTime{
	position: absolute;
	top: 10px;
	right: 150px;
}
.top .showUser{
	 position: absolute;
	 top: 10px;
	 right: 20px;
}
.top .showUser img{
	width: 40px;
	height: 40px;
}
.summary .slogan img {
	margin-left:20px;
	width: 40px;
	height: 40px;
}
.summary .summary-card{
	width: 250px;
	height: 160px;
	background-color: white;
	float: left;
	margin: 10px 30px 20px 30px;
}
</style>
</head>

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

<script type="text/javascript">
	var t = null;
	t = setTimeout(time, 1000);//開始运行
	function time() {
		clearTimeout(t);//清除定时器
		var dt = new Date();
		var y = dt.getYear();
		var month = dt.getMonth();
		var d = dt.getDate();
		var day = dt.getDay();
		var h = dt.getHours();//获取时
		var m = dt.getMinutes();//获取分
		var s = dt.getSeconds();//获取秒
		document.getElementById("showTime").innerHTML = "2018年" + month + "月"
				+ d + "日" + "星期" + day + "   " + h + ":" + m + ":" + s;
		t = setTimeout(time, 1000); //设定定时器，循环运行     
	}
</script>
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

		<!-- Page Content -->
		<div id="page-content-wrapper" style="width: 30%">
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
		<div class="top">
			<div class="showUser">
				<img src="css/contact.png" /> 张三
			</div>
			<label id="showTime"></label>
			<div id="tp-weather-widget"></div>
		</div>
		
		<div class="summary" style="background-color: blue; width: 100%;height: 250px; float: left;">
			<div class="slogan"><img src="img/hotpot.png"><i style="font-size: 20px;">首页</i><i style="font-size: 12px; margin-left: 10px;">//好辣火锅店&nbsp;吃的就是火锅&nbsp;吃的就是辣</i></div>
			<div>
			<ul style="list-style: none;">
			<li><div class="summary-card"></div></li>
			<li><div class="summary-card"></div></li>
			<li><div class="summary-card"></div></li>
			<li><div class="summary-card"></div></li>
			</ul>
			</div>
		</div>
		<div style="background-color: yellow; width: 75%;height: 250px; float: left;"></div>
		<div style=" background-color: green; width: 25%;height: 500px; float: right;"></div>
		<div style="background-color: red; width: 75%;height: 250px; float: left;"></div>
		


	</div>
	<!-- /#wrapper -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script type="text/javascript">
		$(function() {
			$("[data-toggle='popover']").popover();
		});

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

							$('[data-toggle="offcanvas"]').click(function() {
								$('#wrapper').toggleClass('toggled');
							});
						});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>好辣火锅管理</title>
<link rel="stylesheet" href="css/styleRotate.css">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="dist/wc-motion-chart.js"></script>
<script src="js/example.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
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
</style>
</head>
<script>
	$(document).ready(function() {
		var path = window.location.pathname;
		var regExp = /[\/\.\?]+/;
		str = path.split(regExp);
		var node = str.slice(-2, -1);
		$('#' + node + ' a').addClass('at');
		$('#' + node).parent().parent().parent().addClass('in');
	})
</script>
<script>
	(
			function(T, h, i, n, k, P, a, g, e) {
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
				<li><a href="#"><i class="fa fa-fw fa-home"></i>首页</a></li>
				<li><a href="#"><i class="fa fa-fw fa-folder"></i>买单结算</a></li>
				<li><a href="#"><i class="fa fa-fw fa-file-o"></i>前台服务</a></li>
				<li><a href="#item-food" id="headfood" data-toggle="collapse" data-parent="#accordion"><i class="fa fa-fw fa-cog"></i>菜品管理</a></li>
				<li>
				<div class="panel-heading panel" style="background-color: black; border: 0">
						<div id="item-food" class="panel-collapse collapse">
							<div class="item-body">
								<ul class="list-unstyled">
									<li class="item-second"><a href="a.html">菜品列表</a></li>
									<li class="item-second"><a href="b.html">添加菜品</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li><a href="#item-vip" id="headvip" data-toggle="collapse" data-parent="#accordion"><i class="fa fa-fw fa-bank"></i>会员管理</a></li>
				<li>
				<div class="panel-heading panel" style="background-color: black; border: 0">
						<div id="item-vip" class="panel-collapse collapse">
							<div class="item-body">
								<ul class="list-unstyled">
									<li class="item-second"><a href="a.html">会员列表</a></li>
									<li class="item-second"><a href="b.html">添加会员</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li><a href="#item-instance" id="headinstance" data-toggle="collapse" data-parent="#accordion"><i class="fa fa-fw fa-dropbox"></i>财务管理</a></li>
				<li>
				<div class="panel-heading panel" style="background-color: black; border: 0">
						<div id="item-instance" class="panel-collapse collapse">
							<div class="item-body">
								<ul class="list-unstyled">
									<li class="item-second"><a href="a.html">订单列表</a></li>
									<li class="item-second"><a href="b.html">日结算</a></li>
									<li class="item-second"><a href="b.html">总结算</a></li>
								</ul>
							</div>
						</div>
					</div>
				
				</li>
				<li><a href="#item-store" id="headstore" data-toggle="collapse" data-parent="#accordion"><i class="fa fa-fw fa-twitter"></i>库存管理</a></li>
				<li>
				<div class="panel-heading panel" style="background-color: black; border: 0">
						<div id="item-store" class="panel-collapse collapse">
							<div class="item-body">
								<ul class="list-unstyled">
									<li class="item-second"><a href="a.html">在线订货</a></li>
									<li class="item-second"><a href="b.html">导入入库单</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li><a href="#item-people" id="peopleku" data-toggle="collapse" data-parent="#accordion"><i class="fa fa-fw fa-twitter"></i>人员管理</a></li>
				<li>
					<div class="panel-heading panel" style="background-color: black; border: 0">
						<div id="item-people" class="panel-collapse collapse">
							<div class="item-body">
								<ul class="list-unstyled">
									<li class="item-second"><a href="a.html">员工列表</a></li>
									<li class="item-second"><a href="b.html">添加员工</a></li>
									<li class="item-second"><a href="b.html">发放薪资</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
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
				<img src="img/hotpot.png" /> 张三
			</div>
			<label id="showTime"></label>
			<div id="tp-weather-widget"></div>
		</div>

		<div class="summary" style="width: 100%; height: 250px; float: left;">
			<div class="slogan">
				<img src="img/hotpot.png"><i style="font-size: 20px;">首页</i><i
					style="font-size: 12px; margin-left: 10px;">//好辣火锅店&nbsp;吃的就是火锅&nbsp;吃的就是辣</i>
			</div>
			<div>
				<ul style="list-style: none;">
					<li>
						<div class="summary-card qcontainer"
							style="background-color: #D9544F;">
							<div class="film">
								<div class="face front">
									<div class="cardContent">
										<i> <img class="smallIcon" src="img/people.png"></i> <i
											class="cardChinese">就餐已有</i>

									</div>
									<div class="cardEnglish">THIS&nbsp;MONTH&nbsp;PLAN</div>
									<div>
										<div class="progress" style="width: 200px; margin-left: 20px;">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span class="sr-only">90% 完成（成功）</span>
											</div>
										</div>
									</div>
								</div>
								<div class="face back">
									<a class="backText cardEnglish">Check&nbsp;it</a>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="summary-card qcontainer"
							style="background-color: #418BCA;">
							<div class="film">
								<div class="face front">
									<div class="cardContent">
										<i> <img class="smallIcon" src="img/birthday.png">
										</i> <i class="cardChinese">就餐已有</i>
									</div>
									<div class="cardEnglish">THIS&nbsp;MONTH&nbsp;PLAN</div>
									<div>
										<div class="progress" style="width: 200px; margin-left: 20px;">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span class="sr-only">90% 完成（成功）</span>
											</div>
										</div>
									</div>
								</div>
								<div class="face back">
									<a class="backText cardEnglish">Check&nbsp;it</a>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="summary-card qcontainer " style="background: #16A085;">
							<div class="film">
								<div class="face front">
									<div class="cardContent">
										<i> <img class="smallIcon" src="img/dollar.png">
										</i> <i class="cardChinese">就餐已有</i>
									</div>
									<div class="cardEnglish">THIS&nbsp;MONTH&nbsp;PLAN</div>
									<div>
										<div class="progress" style="width: 200px; margin-left: 20px;">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span class="sr-only">90% 完成（成功）</span>
											</div>
										</div>
									</div>
								</div>
								<div class="face back">
									<a class="backText cardEnglish">Check&nbsp;it</a>
								</div>
							</div>
						</div>
					</li>
					<li>

						<div class="summary-card qcontainer" style="background: #3F4E62;">
							<div class="film">
								<div class="face front">
									<div class="cardContent">
										<i> <img class="smallIcon" src="img/eye.png">
										</i> <i class="cardChinese">就餐已有</i>
									</div>
									<div class="cardEnglish">THIS&nbsp;MONTH&nbsp;PLAN</div>
									<div>
										<div class="progress" style="width: 200px; margin-left: 20px;">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span class="sr-only">90% 完成（成功）</span>
											</div>
										</div>
									</div>
								</div>
								<div class="face back">
									<a class="backText cardEnglish">Check&nbsp;it</a>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="container"
			style="width: 974.4px; height: 400px; float: left;"></div>
		<div style="width: 25%; height: 650px; float: right;">
			<div style="font-size: 20px; text-align: center;">优秀员工展示</div>
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img style="width: 324.8px; height: 394.95px; padding: 20px;"
							src="img/enployee2.jpg" alt="First slide">
					</div>
					<div class="item">
						<img style="width: 324.8px; height: 394.95px; padding: 20px;"
							src="img/enployee1.jpg" alt="Second slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div style="width: 75%; height: 250px; float: left;">
			<i
				style="width: 50%; height: 30px; float: left; border-bottom: 2px dashed; margin-left: 10px;">营业额及订单数</i>
			<i
				style="width: 40%; height: 30px; float: right; border-bottom: 2px dashed; margin-right: 50px">主推菜品</i>
		</div>



	</div>
	<!-- /#wrapper -->
















	<script type="text/javascript">
		var options = {
			chart : {
				type : 'line'
			},
			title : {
				text : '年度总结' // 标题
			},
			xAxis : {
				categories : [ '1', '2', '3', '4', '5', '6', '7', '8', '9',
						'10', '11', '12' ]
			// x 轴分类
			},
			yAxis : {
				title : {
					text : '结算' // y 轴标题
				}
			},
			series : [ { // 数据列
				name : '小明', // 数据列名
				data : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]
			// 数据
			}, {
				name : '小红',
				data : [ 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 ]
			} ]
		};
		var chart = Highcharts.chart('container', options);
	</script>
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

							/* $('[data-toggle="offcanvas"]').click(function() {
								$('#wrapper').toggleClass('toggled');
							}); */
						});
	</script>
</body>
</html>
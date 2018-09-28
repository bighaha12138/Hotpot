<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<style type="text/css">
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
	letter-spacing: 1px; font-size : 15px;
	color: white;
	margin-left: 20px;
	font-size: 15px;
}

.cardChinese {
	color: white;
	margin-left: 20px;
}
.backText{
	font-size: 30px;
	line-height: 160px;
	text-align: center;
	margin-left: 50px;
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
	<div class="top">
			<div class="showUser">
				<img src="img/hotpot.png" /> 张三
			</div>
			<label id="showTime"></label>
			<div id="tp-weather-widget"></div>
		</div>
</body>
</html>
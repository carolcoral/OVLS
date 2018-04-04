<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/course_list-v2-less.css"
	type="text/css" />
<link rel="stylesheet" type="text/css" href="css/muke.css" />
<link rel="stylesheet" type="text/css" href="css/moco.min.css" />
<style>
/*登录注册按钮样式*/
#example1, #example2 {
	float: right;
	position: relative;
	color: #333333;
	background: #A9AAAE;
	text-decoration: none;
	padding: 0px 12px;
	margin: 16px 10px 0px 15px;
	border-radius: 3px;
	opacity: 0.6;
	filter: alpha(opacity = 60);
	line-height: 31px;
	height: 31px;
}

#login-area, .header-app {
	position: relative;
	top: -12px;
}
/*搜索区域样式*/
.search-area {
	float: right;
	position: relative;
	height: 40px;
	width: 210px;
	margin: 10px 0;
	padding-right: 30px;
	border: 1px solid #000;
	border-bottom-color: rgba(120, 125, 130, .8);
	zoom: 1;
	-webkit-transition: width .3s;
	-moz-transition: width .3s;
	transition: width .3s;
}
/*搜索框样式*/
#search_top_input {
	float: right;
	position: relative;
	top: 12px;
	right: -10px;
}

.img_sousuo {
	position: absolute;
	left: 220px;
	top: 12px;
}

/*  登录后头像   */
#lv-img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	position: relative;
	top: 20px;
}
</style>
</head>
<body>
	<!-- 头部区域 -->
	<div id="header">
		<div class="page-container" id="nav">
			<!-- logo部分 -->
			<div id="logo" class="logo">
				<a style="background: url(img/logo.png) center center no-repeat"
					href="study/index.jsp" target="_self" class="hide-text" title="首页">兄弟连</a>
			</div>

			<button type="button"
				class="navbar-toggle visible-xs-block js-show-menu">
				<i class="icon-menu"></i>
			</button>
			<ul class="nav-item">
				<li class="set-btn visible-xs-block"><a id="example2"
					target="_self">登录</a> / <a id="example1" target="_self">注册</a></li>

				<li><a href="index.jsp" class="active" target="_self">所有课程</a>
				</li>
				<li><a id="sgy_course" style="color: #02A1E9"
					href="${pageContext.request.contextPath}/exam/home.html"
					class="program-nav">在线测评</a></li>
				<li><a id="sgy_usercenter" style="color: #02A1E9"
					href="user_center.jsp">个人中心</a></li>
				<li><a id="sgy_usercenter" style="color: #02A1E9"
					href="course_center.jsp">课程中心</a></li>
				<li><a id="sgy_delete" style="color: #02A1E9" href="#">安全退出</a>
				</li>
			</ul>


			<div id="login-area">
				<ul class="header-unlogin clearfix">
					<li class="header-signin"><a href="#" id="example2">登录</a></li>
					<li class="header-signup"><a href="#" id="example1">注册</a></li>
				</ul>
			</div>


			<div id="search_top_input" class="float_l top_input">
				<input class="posi_relative" type="text" id="search_id"
					placeholder="请输入..." style="width: 250px;" /> <img
					class="img_sousuo bianshou" src="img/uiz4.png"
					onclick="javascript:window.location='search.jsp'" />
			</div>

		</div>

	</div>

	<!-- 这里导入弹出层插件 -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>

	<script type="text/javascript">
		/*
		 *注册弹出层事件函数 
		
		 */

		$(document).on('click', '#example1', function() {
			layer.open({
				type : 2,
				border : [ 1, 1, 'gray', true ],
				shade : [ 0.5, '#000', true ],
				shadeClose : true,
				title : false,
				content : 'regist.jsp',
				area : [ '450px', '450px' ],
				offset : [ '100px', '' ],
			});

		});
		/*
		 *登录弹出层事件函数 
		
		 */

		$(document).on('click', '#example2', function() {
			layer.open({
				type : 2,
				border : [ 1, 1, 'gray', true ],
				shade : [ 0.5, '#000', true ],
				shadeClose : true,
				title : false,
				content : 'login.jsp',
				/* content : '${pageContext.request.contextPath}/regist.jsp', */
				area : [ '450px', '450px' ],
				offset : [ '100px', '' ],
			});

		});
	</script>

</body>

</html>
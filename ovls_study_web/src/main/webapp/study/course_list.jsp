<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>实战开发课程_IT培训精品课程_兄弟网课程</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta property="qc:admins" content="77103107776157736375" />
<meta property="wb:webmaster" content="c4f857219bfae3cb" />
<meta http-equiv="Access-Control-Allow-Origin" content="*" />
<meta http-equiv="Cache-Control" content="no-transform " />
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'unsafe-inline' 'unsafe-eval' *.imooc.com *.mukewang.com *.baidu.com *.sina.com.cn *.bootcss.com">

<meta name="Keywords" content="" />

<meta name="Description"
	content="精品课程，为您提供专业的IT实战开发课程，包含前端开发、后端开发、移动端开发、数据处理、图像处理等各方面IT技能，课程全面、制作精良、讲解通俗易懂。">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/static/moco/v1.0/dist/css/moco.min.css"
	type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/common.css" type="text/css">

<!-- 网页标题栏图标 -->
<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/study/favicon.ico" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/pagination.css" media="screen"  >

<style type="text/css">
.course-nav-item-on{
	display: inline-block;
	margin: 0 4px;
	background-color: #4C9ED9;
	color:black;
}

.sort-item-on{
	color:red;
}

li:hover {
	cursor: pointer;
}

</style>

</head>
<body>

	<!-- 引入页头页面 -->
	<%@include file="head_black.jsp"%>
		<div class="bindHintBox js-bindHintBox hide">
		<div class="pr">
			为了账号安全，请及时绑定邮箱和手机 <a href="javascript:void(0)" class="ml20 color-red"
				target="_blank">立即绑定</a>
			<button class="closeBindHint js-closeBindHint" type="button"></button>
			<div class="arrow"></div>
		</div>
	</div>

	<div id="main">

		<div class="wrap ">
			<div class="top">
				<div class="course-content">
					<div class="course-nav-box">
						<div class="course-nav-row clearfix">
							<span class="hd l">方向：</span>
							<div class="bd">
								<ul id="lv_show_directions">
								
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
					
								</ul>
							</div>
						</div>
						<div class="course-nav-row clearfix">
							<span class="hd l">分类：</span>
							<div class="bd">
								<ul  id="lv_show_subjects">
									
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
										<li class="course-nav-item" >
										<span>JAVA</span>
										</li>
										
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="course-tool-bar clearfix">
				<div class="tool-left l">
					<a href="#" id="lv-sort-1">最新</a> 
					<a href="#" id="lv-sort-2">最热</a>
				</div>
				<div class="l">
					<span class="tool-item" style="display: none;"> <a
						class="follow-learn tool-chk" href="javascript:void(0);">跟我学</a>
					</span>
				</div>
				<div class="tool-right r">

					<span class="tool-item total-num"> 共<b>22</b>个课程</span> 
					<span class="tool-item tool-pager"> 
						<span class="pager-num">
							<b class="pager-cur"  id="lv_currentPage">1</b>
							/<em class="pager-total" id="lv_pages">5</em>
						</span> 
					</span>
				</div>
			</div>
			<div class="course-list">
				<div class="moco-course-list">
					<ul class="clearfix">
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
						<li>
						<div class='index-card-container course-card-container container '>
							<a target="_blank" class='course-card' href="course.jsp">
								<div class='course-card-top cart-color blue'>
									<i class='imv2-war'></i> <span>JAVASE</span>
								</div>
								<div class='course-card-content'>
									<h3 class='course-card-name'>JAVASE</h3>
									<p>JAVAJAVAJAVAJAVA</p>
									<div class='clearfix course-card-bottom'>
										<div class='course-card-info'>
											xxx<span>·</span>102人在学
										</div>
									</div>
								</div>
							</a> <img src='static/img/index/new/new.png' class='course-cart-new'>
							<div class='course-card-bk'>
								<img src='courseimg/s/cover050_s.jpg' />
							</div>
						</div>
						</li>
					</ul>
				</div>
				<!-- 分页实现 -->
				<div class="M-box2"></div>
				<!-- 分页实现 -->
			</div>
		</div>
	</div>

	<!-- 引入页脚页面 -->

	<%@include file="footer_black.jsp"%>

</body>

</html>
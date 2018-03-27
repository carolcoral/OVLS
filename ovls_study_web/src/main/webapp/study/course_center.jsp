<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程中心</title>
<!-- 网页标题栏图标 -->

<script type="text/javascript">
	/**
		这个函数是别人写好的，获得滚到条到当前页面顶部的距离
	
	 */
	function getScrollTop() {
		var scrollPos;
		if (window.pageYOffset) {
			scrollPos = window.pageYOffset;
		} else if (document.compatMode && document.compatMode != 'BackCompat') {
			scrollPos = document.documentElement.scrollTop;
		} else if (document.body) {
			scrollPos = document.body.scrollTop;
		}
		return scrollPos;
	}

	//这个函数作用是，随着滚动条的变化做出判断 执行逻辑
	//-moz代表firefox浏览器私有属性,-ms代表IE浏览器私有属性,-webkit代表chrome、safari私有属性
	//transform代表偏移的意思,translate中数值正数表示向下或向右移,负数代表向上向左移
	window.onscroll = function() {
		var dis = getScrollTop();
		if (dis > 20) {
			$("#pic").css({
				"width" : "100px",
				"height" : "100px",
				"-moz-transform" : "translate(50px, 100px)",
				"-webkit-transform" : "translate(50px, 100px)"
			});

		} else {
			$("#pic").css({
				"width" : "200px",
				"height" : "200px",
				"-moz-transform" : "translate(0px, 0px)",
				"-webkit-transform" : "translate(0px, 0px)"
			});

		}
	};
</script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/style/pagination.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/css/a.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/css/jquery.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/css/layer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/css/share_style0_16.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/study/css/reset.css" />

<style type="text/css">
.myClassList table td dl dd {
	margin-top: 88px
}

#face_panel {
	z-index: 99999999
}
.M-box2{
	position: absolute;
	text-align: center;
	left: 650px;
	zoom: 1;
	buttom: 200px;
	top: 500px;
}
</style>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/study/css/content.css"
	type="text/css">
<style type="text/css">
.bg-other {
	height: 220px;
	background: url(${pageContext.request.contextPath}/study/img/u2.jpg) center
		top no-repeat #000;
	background-size: cover
}

#logo a, .logo a {
	display: block;
	height: 60px;
	width: 140px;
	background: url(${pageContext.request.contextPath}/study/img/h1.jpg) center
		center no-repeat;
	text-indent: 100%;
	overflow: hidden
}

.user-card-box .user-card-item img {
	width: 36px;
	height: 36px;
	border-color: #4d5559;
	margin-top: 10px
}

.u-container {
	margin-left: 415px;
	min-height: 589px;
	margin-right: 250px;
}

#pic {
	margin-top: -60px;
	margin-left: -10px;
}

.slider .user-pic .suimg {
	width: 200px;
	height: 200px;
	left: 10px;
}

.img_sousuo {
	position: relative;
	left: -25px;
	top: 12px;
}

#layui-layer1 {
	z-index: 19991015;
	width: 330px;
	height: 330px;
	top: 62px;
	left: 1270px;
}

.mod-post .post-row {
	border-bottom: 1px solid #d9dde1;
	overflow: hidden;
	padding: 24px 0 16px 24px;
}

.bd {
	margin-left: 45px;
	margin-top: -20px;
}

#login_pic {
	width: 50px;
	border-radius: 50px;
	top: 18px;
	position: relative;
	left: 10px;
}

.study-tl .time {
	position: absolute;
	left: 0;
	top: 20px;
	margin-left: -75px;
	line-height: 16px;
	font-size: 12px;
	color: #8a8c8f;
}

.study-tl .time::before {
	content: '';
	display: block;
	position: absolute;
	left: 70px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background-color: #d0d6d9;
}
.study-tt {
	padding: 0;
}
.lv_icon_tick{
position: relative;
left: -15px;

}
.lv_icon_drop{

}

</style>

</head>
<body>
	<!-- **页头开始 -->
	<%@include file="head_black.jsp"%>
	<!-- **页头结束 -->

	<!-- 主体开始 -->
	<div id="main">
		<!-- **主体上部背景开始 -->
		<div class="bg-other user-head-info">
			<div class="user-info">
				<h3 class="user-name clearfix">
					<span>大兄弟</span>
				</h3>
				<!--25-->
				<p class="about-info">
					<span class="sexSecret " title="保密 "></span> 
					<span class="u-info-learn"><em></em></span> <span
						class="u-info-credit"> <a href="#">积分<em>1</em></a>
					</span> <span class="u-info-mp"> <a href="#">经验<em>0</em></a>
					</span>
				</p>
				<p class="user-desc">大兄弟哈哈哈</p>
				<div class="study-info clearfix">
					<div class="item follows">
						<a href="#"><em>1</em> <span>关注</span> </a>
					</div>
					<div class="item followers">
						<a href="#"><em>0</em> <span>粉丝</span> </a>
					</div>
				</div>
				<!--.study-info end-->
			</div>
			<!-- .user-info end -->
		</div>
		<!-- .big-pic end -->
		<!-- **主体上部背景结束 -->

		<!-- **主体下部开始 -->
		<div class="wrap">
			<!-- **主体左边导航开始 -->
			<div class="slider"
				style="position: fixed; left: 191.5px; top: 95px;">
				<!-- **导航图片开始 -->
				<div class="user-pic">
					<div class="user-pic-bg su-user-pic-bg"></div>
					<!--user-pic-big end-->
					<img id="pic" class="img suimg"
						src="${pageContext.request.contextPath}/study/img/u2.jpg" alt="头像被怪物吃啦!">
					<div class="set-btn" style="display: none;">
						<a href="#"> <!-- **这里需要主页链接 --> <i class="icon-set"></i>
						</a>
					</div>
				</div>
				<!-- **导航图片结束 -->
				<!-- **导航列表开始 -->
				<ul>
					<li onclick="openc()"><a href="#"> 
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon7.jpg" class="lv_icon_tick">
					<span>浏览记录</span>
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon8.jpg" class="lv_icon_drop">
					</a></li>
					<li onclick="openf()"><a href="#"> 
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon7.jpg" class="lv_icon_tick">
					<span>笔记收藏</span>
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon8.jpg" class="lv_icon_drop">
					</a></li>
					<li onclick="openv()"><a href="#"> 
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon7.jpg" class="lv_icon_tick">
					<span>课程收藏</span>
					<img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon8.jpg" class="lv_icon_drop">
					</a></li>
				</ul>
				<!-- **导航列表结束 -->
			</div>
			<!-- **主体左边导航结束 -->
			<!-- **主体右边内容框浏览记录开始 -->
			<div id="sgy_fvideo" class="u-container">
				<div class="c-tab clearfix">
					<div class="tool-left l">
						<a href="#" class="sort-item active">最近的学习视频</a>

					</div>
					<div class="tool-right r">
						<div class="tool-all">

							<ul id="js-columbd" class="all-cont" style="display: none;">
								<li><a href="#">全部课程</a></li>
								<li><a href="#">Java</a></li>
								<li><a href="#">全部课程</a></li>
							</ul>
						</div>
					</div>
				</div>
				
					<div class="js-course-list my-space-course study-tl">
						<div class="clearfix tl-item  tl-item-first">
							<span class="time">${item.browsing_time}</span>
							<div class="course-list course-list-m">
								<ul class="clearfix">
									<li class="course-one">
										<div class="course-list-img l">
											<a href="#" target="_blank"> <img alt="图片不知道去哪玩了"
												src="${pageContext.request.contextPath}/study/img/course/html1.jpg"
												width="200" height="113">
											</a>
										</div>
										<div class="course-list-cont">
											<h3 class="study-hd">
												<a href="#" target="_blank">HTML</a> <span
													class="i-new">更新完毕</span>
											</h3>
											<div class="study-points">
												<span class="i-left span-common">已学0%</span> <span
													class="i-mid span-common">用时23分</span> <span
													class="i-right span-common">学习至 xxx</span>
											</div>
											<div class="catog-points">
												<span class="i-left span-common"><a href="#">笔记 <i>0</i></a></span>
												<span class="i-mid span-common"><a href="#">代码 <i>0</i></a></span>
												<span class="i-right span-common"><a href="#">问答
														<i>0</i>
												</a></span> 
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="js-course-list my-space-course study-tl">
						<div class="clearfix tl-item  tl-item-first">
							<span class="time">${item.browsing_time}</span>
							<div class="course-list course-list-m">
								<ul class="clearfix">
									<li class="course-one">
										<div class="course-list-img l">
											<a href="#" target="_blank"> <img alt="图片不知道去哪玩了"
												src="${pageContext.request.contextPath}/study/img/course/html1.jpg"
												width="200" height="113">
											</a>
										</div>
										<div class="course-list-cont">
											<h3 class="study-hd">
												<a href="#" target="_blank">HTML</a> <span
													class="i-new">更新完毕</span>
											</h3>
											<div class="study-points">
												<span class="i-left span-common">已学0%</span> <span
													class="i-mid span-common">用时23分</span> <span
													class="i-right span-common">学习至 xxx</span>
											</div>
											<div class="catog-points">
												<span class="i-left span-common"><a href="#">笔记 <i>0</i></a></span>
												<span class="i-mid span-common"><a href="#">代码 <i>0</i></a></span>
												<span class="i-right span-common"><a href="#">问答
														<i>0</i>
												</a></span> 
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>

			</div>
			<!-- **主体右边内容框浏览记录结束 -->
			
			<!-- **主体右边内容框笔记收藏开始 -->
			<div id="sgy_fnote" class="u-container">
				<div class="c-tab clearfix">
					<div class="tool-left l">
						<a href="#" class="sort-item active">我收藏的笔记</a>
					</div>
					<div class="tool-right r">
						<div class="tool-all">
							<ul id="js-columbd" class="all-cont" style="display: none;">

								<li><a  href="#">全部课程</a></li>
								<li><a  href="#">HTML/CSS</a></li>
								<li><a  href="#">Java</a></li>
								<li><a href="#">全部课程</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="course-list course-list-m js-course-list">
					<ul id="js-note-container" class="mod-post">
                    
						<li class="post-row js-find-txt" >
							<div class="media">
								<a href="javascript:;" ><img
									src="${pageContext.request.contextPath}/study/img/ke1.jpg" width="40"
									height="40"></a>
							</div>
							<div class="bd">
								<div class="tit">
									<a href="/u/3974018/courses" target="_blank">JAVA</a>
								</div>
								<div class="js-notelist-content notelist-content mynote">
									<pre class="autowrap">笔记内容:JAVA面向对象啊</pre>
								</div>
								<div class="clearfix">
									<input class="moco-btn moco-btn-green sava_btn" value="保存"
										type="button">
								</div>
								<div class="answercon">
								</div>
								<div class="footer clearfix">
									<span title="4天前" class="l timeago">时间：2017-1-1</span> <a
										href="/video/14625" class="from l"></a>
									<div class="actions r">
										<textarea style="display: none;">mysql运行命令</textarea>
									</div>
								</div>
							</div>
						</li>
						<li class="post-row js-find-txt" >
							<div class="media">
								<a href="javascript:;" ><img
									src="${pageContext.request.contextPath}/study/img/ke1.jpg" width="40"
									height="40"></a>
							</div>
							<div class="bd">
								<div class="tit">
									<a href="/u/3974018/courses" target="_blank">JAVA</a>
								</div>
								<div class="js-notelist-content notelist-content mynote">
									<pre class="autowrap">笔记内容:JAVA面向对象啊</pre>
								</div>
								<div class="clearfix">
									<input class="moco-btn moco-btn-green sava_btn" value="保存"
										type="button">
								</div>
								<div class="answercon">
								</div>
								<div class="footer clearfix">
									<span title="4天前" class="l timeago">时间：2017-1-1</span> <a
										href="/video/14625" class="from l"></a>
									<div class="actions r">
										<textarea style="display: none;">mysql运行命令</textarea>
									</div>
								</div>
							</div>
						</li>


					</ul>
				</div>
                
<!-- 				分页
				<div class="M-box2"></div>
 -->
			</div>
			<!-- **主体右边内容框笔记收藏结束 -->
			
			<!-- **主体右边内容框课程收藏开始 -->
			<div id="sgy_fcourse" class="u-container">
				<div class="c-tab clearfix">
					<div class="tool-left l">
						<a href="#" class="sort-item active">我收藏的课程</a>
					</div>
					<div class="tool-right r">
						<div class="tool-all">

							<ul id="js-columbd" class="all-cont" style="display: none;">
								<li><a href="javascript:void(0)">全部课程</a></li>
								<li><a href="javascript:void(0)">Java</a></li>
								<li><a href="javascript:void(0)">全部课程</a></li>
							</ul>
						</div>
					</div>
				</div>
                
				<div class="js-course-list my-space-course study-tl study-tt">
					<div class="clearfix tl-item  tl-item-first">
						<!-- <span class="time"><b>2017</b><em>06月28日</em></span> -->
						<div class="course-list course-list-m">
							<ul class="clearfix">
							
								<li class="course-one">
									<div class="course-list-img l">
										<a href="#" target="_blank"> <img alt="我们的图片溜走了!"
											src="${pageContext.request.contextPath}/study/img/course/lv_01.jpg"
											width="200" height="113">
										</a>
									</div>
									<div class="course-list-cont">
										<h3 class="study-hd">
											<a href="#" target="_blank">JAVA</a> <span class="i-new">更新完毕</span>
											<!-- 更新完毕 -->
										</h3>
										 <div class="study-points">
											<span class="i-left span-common"></span> <span
												class="i-mid span-common"></span> <span
												class="i-right span-common">收藏时间:2017-5-5</span>
										</div> 
										
									</div>
								</li>
								<li class="course-one">
									<div class="course-list-img l">
										<a href="#" target="_blank"> <img alt="我们的图片溜走了!"
											src="${pageContext.request.contextPath}/study/img/course/lv_01.jpg"
											width="200" height="113">
										</a>
									</div>
									<div class="course-list-cont">
										<h3 class="study-hd">
											<a href="#" target="_blank">JAVA</a> <span class="i-new">更新完毕</span>
											<!-- 更新完毕 -->
										</h3>
										 <div class="study-points">
											<span class="i-left span-common"></span> <span
												class="i-mid span-common"></span> <span
												class="i-right span-common">收藏时间:2017-5-5</span>
										</div> 
										
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
				
<!-- 				分页
				<div class="M-box2"></div> -->
			</div>
			<!-- **主体右边内容框课程收藏结束 -->
		</div>
		<!-- **主体下部结束 -->
	</div>
	<!-- **主体结束 -->

	<!-- **页脚开始 -->
	<%@include file="footer_black.jsp"%>
	<!-- **页脚结束 -->

	<!-- **页面右边固定栏开始 -->
	<div id="J_GotoTop" class="elevator">
	</div>
	<!-- **页面右边固定栏结束 -->
</body>
</html>
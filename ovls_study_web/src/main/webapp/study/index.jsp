<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>兄弟学习网-程序员的梦工厂</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/muke.css">
		
		<!-- 网页标题栏图标 -->
		<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/study/img/favicon.ico"/>
	
		<!-- 名师推荐样式  -->
		<style type="text/css">
			#teacher {
				display:inline-block; 
				width: 216px; 
				height:364px;
				position: relative; 
				left:20px;
				background-color: white; 
				box-shadow: 10px 10px 5px #888888;
			}
			#teacher_top{
				text-align: center; 
				position: relative; 
				top: 30px;
				
			}
			#teacher_intro{
				position: relative; 
				top: 30px;
				font-size: 12px; 
				width: 180px; 
				height: 110px;
				margin: 0 auto; 
				color: RGB(130,130,130); 
				line-height: 1.5em; 
				letter-spacing:1.2px;
				overflow: hidden;
			}
		</style>
	</head>
	
	<body>
		<%@include file="head.jsp"%>		
<!--========================轮播图==============================-->
		<div class="width100 float_l margin_t-405 margin_b40">
			<div class="width_1200 margin_auto">
				<div class="width100 float_l height460 posi_relative">
					<div class="width100 float_l">
						<div class="focusBox">
							<ul class="pic">
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index1.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index2.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index3.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index4.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index5.jpg" /></a>
								</li>
							</ul>
							<a class="prev" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<ul class="hd">
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>

					<div class="width_220 float_l height460 posi_absolute backg_jqian padding_t5 bianshou">
						<div class="width100 float_l tab_qiehuan ">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>前端开发</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg15">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">HTML/CSS</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">JavaScript</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">jQuery</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Html5</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">CSS3</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Node.js</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">AngularJS</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Bootstrap</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">React</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Sass/Less</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Vue.js</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">WebApp</a>
											</li>
											<li>/</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | 前端JavaScript面试技巧
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | Vue2.0+Node.js+MongoDB全栈打造商城系统
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | node建站攻略（二期）——网站升级
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>后端开发</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg16">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">PHP</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Java</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Python</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">C</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">C++</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Go</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">C#</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Ruby</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | JAVA实现对称加密
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | JAVA入门
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | JAVA高级教程
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>移动开发</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg17">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Android</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">iOS</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Unity3D</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Cocos2d-x</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | Android-Service系列之Notification综合应用
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | iOS界面优化
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | Android网络与数据存储
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>数据库</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg18">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">MySQL</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">MongoDB</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Oracle</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">SQLServer</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | ps入门教程Ⅱ-路径
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | 手机UI设计基础-尺寸
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | PS入门基础-魔幻调色
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>云计算&amp;大数据</span> <span class=" float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg16">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">大数据</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">云计算</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | ps入门教程Ⅱ-路径
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | 手机UI设计基础-尺寸
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | PS入门基础-魔幻调色
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>运维&amp;测试</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg15">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">测试</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">Linux</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | ps入门教程Ⅱ-路径
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | 手机UI设计基础-尺寸
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | PS入门基础-魔幻调色
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="width100 float_l tab_qiehuan ">
							<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
								<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
									<span>UI设计</span> <span class="float_r">></span>
								</div>
							</div>
							<div class="width_700 float_l lunbofenlei dis_none img_backg17">
								<div class="width100 float_l padding40">
									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
										<ul class="width100 ul_lis float_l">
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">动画特效</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">APPUI设计</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">设计工具</a>
											</li>
											<li>/</li>
											<li>
												<a href="${pageContext.request.contextPath}/study/course_list.jsp">设计基础</a>
											</li>
										</ul>
									</div>

									<div class="width100 float_l margin_b40">
										<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
										<ul class="width100 ul_lis float_l">
											<li class="width100 float_l margin_b15">
												<a>课程 | ps入门教程Ⅱ-路径
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | 手机UI设计基础-尺寸
												</a>
											</li>
											<li class="width100 float_l margin_b15">
												<a>课程 | PS入门基础-魔幻调色
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			$('.tab_qiehuan').hover(
				function() {
					$(this).children(".bianhuabeijing").css("background-color",
						"#8a8f93").next().css("display", "block")
				},
				function() {
					$(this).children(".bianhuabeijing").css("background-color",
						"#a9aaae").next().css("display", "none")
				});
		</script>

		<script type="text/javascript">
			jQuery(".focusBox").slide({
				mainCell: ".pic",
				effect: "left",
				autoPlay: true,
				delayTime: 500
			});
		</script>

<!--========================== 实战推荐 =============================-->
		<div class="width100 float_l margin_b40">
			<div class="width_1200 margin_auto">

				<div class="width100 float_l margin_b20">
					<div class="float_l">
						<span class="fon_siz16">课程推荐</span>
					</div>
					<!-- <div class="float_r bianshou">
						<span>更多></span>
					</div> -->
				</div>
				<div class="width100 float_l" id="zymCourse">
				   <div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
				</div>
			</div>
		</div>

<!--========================== 免费好课 =============================-->
		<div class="width100 float_l margin_b40">
			<div class="width_1200 margin_auto">

				<div class="width100 float_l margin_b20">
					<div class="float_l">
						<span class="fon_siz16">免费好课</span>
					</div>
				</div>
					
				<div class="width100 float_l" id="freeCourse">
				
				<!-- 利用ajax加载免费好课 -->
				
				</div>
			</div>
		</div>

<!--========================== Html-前端工程师 =============================-->
		<div class="width100 float_l padding_tb45 backg_qiangray">
			<div class="width_1200 margin_auto">
				<div class=" width_220 height364 float_l img_backg3 margin_r20">
					<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
						<span>Html<br>前端工程师
					</span>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
						<a href="${pageContext.request.contextPath}/study/download/HTML5.CHM"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz12 bianshou line_hei26 color_shenred wobeijingguos margin_t120">
						<a>超文本标记语言 HyperText Markup Language 简称：HTML，是一种标记语言。</a>
					</div>
				</div>
				<div class="width_712 float_l margin_r20" id="htmlCourse">
					<div class=" width100 float_l height172 kaishimeiyou img_backg12 text-center line_hei172 margin_b20">
						<span class="fon_siz20 color_white b_weight700" style="font-size: 26px;">靡不有初&nbsp;&nbsp;鲜克有终</span>
					</div>
					<!-- 追加html课程 -->
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
				</div>
				
				<div class="width_220 height364 float_l backg_white border_shadow" id="htmlCourseScore">
					<!-- 追加htmlCourseScore 课程评分列表，由高到低 -->
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class='width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white'>
							<span class='float_l color_red'>课程评分：</span> 
							<span class='float_r color_gray'><span>100</span></span>
						</div>
					</div>
					<div class='width100 float_l padding_lr20 dadiv'>
						<div class='width100 float_l border_t padding_t10'>
							<ul class='tongli_ys chaochuyincang'>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
		</div>

<!--========================== java-工程师 =============================-->
		<div class="width100 float_l backg_qiangray padding_b45">
			<div class="width_1200 margin_auto">
				<div class=" width_220 height364 float_l img_backg11 margin_r20">
					<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
						<span>Java<br>开发工程师
					</span>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
						<a href="${pageContext.request.contextPath}/study/download/JDK_API_1_6_zh_CN.CHM"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
					</div>
					<div class="width100 float_l padding_lr20 fon_siz12 bianshou line_hei26 color_blue wobeijingguosa margin_t120">
						<a>Java是由Sun公司于1995年5月推出的Java面向对象程序设计语言和Java平台的总称。</a>
					</div>
				</div>
				<div class="width_712 float_l margin_r20" id="javaCourse">
					<div class=" width100 float_l height172 kaishimeiyou img_backg10 text-center line_hei172 margin_b20">
						<span class="fon_siz20 color_white b_weight700" style="font-size: 26px;">不忘初心&nbsp;&nbsp;方得始终</span>
					</div>
					
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
				
				</div>

				<div class="width_220 height364 float_l backg_white border_shadow" id="javaCourseScore">
					<!-- 追加javaCourseScore 课程评分列表，由高到低 -->
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class='width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white'>
							<span class='float_l color_red'>课程评分：</span> 
							<span class='float_r color_gray'><span>100</span></span>
						</div>
					</div>
					<div class='width100 float_l padding_lr20 dadiv'>
						<div class='width100 float_l border_t padding_t10'>
							<ul class='tongli_ys chaochuyincang'>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

<!--========================== Oracle 工程师 =============================-->
		<div class="width100 float_l backg_qiangray">
			<div class="width100 float_l">
				<div class="width_1200 margin_auto">
					<div class="width100 float_l" id="courseOracle">
						<div class=" width_220 height172 float_l img_backg14 margin_r20">
							<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
								<span>Oracle<br>DBA
							</span>
							</div>
							<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
								<a href="${pageContext.request.contextPath}/study/download/ORACLE.chm"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
							</div>
						</div>
						 <div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<%@include file="footer.jsp"%>
	</body>
	
<script type="text/javascript">

$(function(){
	//加载免费好课信息
	loadFreeCourse();
	//TODO 加载课程推荐信息
	//TODO 加载html课程信息
});


function loadFreeCourse(){
	$.ajax({
		url:"http://localhost:8002/course/free",
		type:"get",
		data:{"top":5},
		dataType:"json",
		success:function(result){
			if(result.status==1){
				var courses = result.data;
				//循环课程集合,生成免费好课显示
				for(var i=0;i<courses.length;i++){
					var course_id = courses[i].id;
					var course_name = courses[i].name;
					var course_intro = courses[i].intro;
					var course_score = courses[i].score;
					var course_img = courses[i].image;
					var course_learnCount = courses[i].learnCount;
					//拼一个课程元素
					var str = '';
					str+='<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">';
					str+='<a href="course.html?id='+course_id+'">';
					str+='	<div class="width100 float_l img_100 z_inx_1">';
					str+='		<img src="img/course/'+course_img+'">';
					str+='	</div>';
					str+='	<div class="img_backg2 donghua">';
					str+='		<span class="margin_t15 float_l ">'+course_name+'</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">'+course_intro+'</span>';
					str+='	</div>';
					str+='	<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">';
					str+='		<span class="float_l color_red">评价:'+course_score+'分</span> <span class="float_r color_gray"><span>'+course_learnCount+'</span>人在学</span>';
					str+='	</div>';
					str+='</a>';
					str+='</div>';
					//添加到免费好课div中
					$("#freeCourse").append(str);
				}
			}
		}
	});
};

</script>
	
	
</html>
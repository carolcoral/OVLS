<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎学习</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/a.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/jquery.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/layer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/share_style0_16.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/willesPlay.css" />
<script src="${pageContext.request.contextPath}/study/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/study/js/willesPlay.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/study/layer/layer.js" charset="utf-8"></script>
<!-- 网页标题栏图标 -->
<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/study/favicon.ico"/>
<!-- 笔记编辑框样式 -->
<style type="text/css">
.wys_context{
    width: 350px;
	height: 110px;
	border: 1px solid #8B9CAF;
}
    
/*评论成功提示的样式*/
#showResult {
	position: absolute;
	visibility: hidden;
	overflow: hidden;
	border: 1px solid #CCC;
	background-color: #F9F9F9;
	border: 1px solid #333;
	padding: 5px;
}
</style>
</head>
<body>
	
	 <%@include file="head_black.jsp" %>
	
	<div id="studyMain">
		<div id="bgarea" class="video-con">
			<div class="js-box-wrap" style="width: 100%; height: 611px;">
				<div id="J_Box" class="course-video-box">

					<!-- 视频播放器 -->
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div id="willesPlay">
									<div class="playHeader">
										<div class="videoName">Oracle</div>
									</div>
									<div class="playContent">
										<div class="turnoff">
											<ul>
												<li><a href="javascript:;" title="关灯"
													class="btnLight on glyphicon glyphicon-sunglasses"></a></li>
												<li><a href="javascript:;" title="分享"
													class="glyphicon glyphicon-share"></a></li>
											</ul>
										</div>
										<video width="100%" height="100%" id="playVideo"> 
											<source src= "${pageContext.request.contextPath}/study/video/oracle/oracle_1.mp4" type="video/mp4"></source>
										 </video>
										<div class="playTip glyphicon glyphicon-play"></div>
									</div>
									<div class="playControll">
										<div class="playPause playIcon"></div>
										<div class="timebar">
											<span class="currentTime">0:00:00</span>
											<div class="progress">
												<div
													class="progress-bar progress-bar-danger progress-bar-striped"
													role="progressbar" aria-valuemin="0" aria-valuemax="100"
													style="width: 0%"></div>
											</div>
											<span class="duration">0:00:00</span>
										</div>
										<div class="otherControl">
											<span class="volume glyphicon glyphicon-volume-down"></span>
											<span class="fullScreen glyphicon glyphicon-fullscreen"></span>
											<div class="volumeBar">
												<div class="volumewrap">
													<div class="progress">
														<div class="progress-bar progress-bar-danger"
															role="progressbar" aria-valuemin="0" aria-valuemax="100"
															style="width: 8px; height: 40%;"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="text-align: center; clear: both;"></div>

				</div>
			</div>




			<!--此处结构为练习题，视频，编程公用的侧栏-->
			<div class="section-list">

				<!-- 视频右侧笔记  提问 框 -->
				<div class="operator">
					
					<div class="op notes" id="wys_note">
						<em class="icon-note"></em>笔记
					</div>
					<div class="op question" id="wys_question">
						<em class="icon-addques"></em>提问
					</div>
					
				</div>


				<div class="nano has-scrollbar">
					
					<!-- 弹出笔记框 记笔记 -->
					<div class="nano-pane">
						<div class="nano-slider"
							style="height: 286px; transform: translate(0px, 0px);"></div>
					</div>
				</div>

			</div>
			<!--练习题，视频，编程公用的侧栏 结束 -->

		</div>
		

	</div>
	<!-- studentmain 结束 -->
			<!-- 评论/问答/笔记切换函数开始 -->
	<script type="text/javascript">
	    $(function(){
	    	wys_pl();
	    })
	    
	    
	    function wys_pl(){
	    	$("#pl-content").show();
	    	$("#qa-content").hide();
	    	$("#note-content").hide();
	    	
	    	$("#plMenu").css("color", "red");
	    	$("#qaMenu").css("color", "#4D555D");
	    	$("#noteMenu").css("color", "#4D555D");
	    }
	    
	    function wys_wd(){
	    	$("#pl-content").hide();
	    	$("#qa-content").show();
	    	$("#note-content").hide();
	    	
	    	$("#plMenu").css("color", "#4D555D");
	    	$("#qaMenu").css("color", "red");
	    	$("#noteMenu").css("color", "#4D555D");
	    	
	    };
	    
	    
	
	</script>	
			<!-- 评论/问答/笔记切换函数结束 -->

	<div class="course-subcontainer clearfix">
		<!-- 视频下 的   评论 问答 笔记  选项 -->
		<div class="course-left">
			<ul class="course-menu course-video-menu clearfix js-course-menu"
				data-ower="my" data-sort="last"
				style="position: absolute; left: 0px;">
				<li onclick="wys_pl()" class="course-menu-item" id="zxy_01"><a class=""
					 id="plMenu">评论</a></li>
				<li onclick="wys_wd()" class="course-menu-item" id="gz_01"><a id="qaMenu" class="">问答</a></li>
				<li  class="course-menu-item" id="wys_01">
					<a id="noteMenu" class="">笔记</a>
				</li>
			</ul>
			

			<div id="disArea" class="lists-container list-wrap">
				<!-- 评论部分 -->
				<div id="pl-content" class="list-tab-con" style="display: none;">
					<!-- 评论框 -->
					<div class="publish clearfix" id="discus-publish">
						<div class="publish-wrap publish-wrap-pl">
							<div class="pl-input-wrap clearfix">
								<a href="#" class="user-head l"> <img src="${pageContext.request.contextPath}/study/images/xiaoxin.jpg" alt="用户名">
								</a>
								
								<div>
									<textarea style="resize: none;float: right;margin: 0px 25px;width: 690px;height: 100px;border: 1px solid rgba(160, 160, 160, 0.8);border-radius: 3px;" id="textContext" class="js-placeholder" placeholder="扯淡、吐槽、表扬、鼓励……想说啥就说啥！" required></textarea>
									<br /> <br /> <input onclick="zxy_eva_Context()" id="subContext" class="r course-btn" type="button" value="提交评论" />
								</div>
								<div id="showResult"></div>
							</div>

						</div>
					</div>
					<!-- 评论框 结束 -->

					<div id="plLoadListData">
						<!-- 评论展示 -->
						<div class="pl-container">
							<ul>
								<!-- 此DIV块 绑定了事件，可以通过点击“评论”局部刷新获取数据库中该视频的评价列表 -->
								<div></div>
							</ul>
						</div>
						<!-- 评论展示结束 -->
					</div>
				</div>
				<!-- 评论部分结束 -->

				<!-- 问答模块  -->
				<div id="qa-content" class="list-tab-con" style="display: none;">
					<div id="qaLoadListData">
						<div class="answertabcon">
							<p class="unquestion">此节暂无同学的问答</p>
						</div>
						<div class="page discuss-list-page">分页</div>
					</div>
				</div>
				<div id="qa-content" class="list-tab-con" style="display: block;">
					<div id="qaLoadListData">
						<div class="sortlist">
							<div class="ordertab clearfix">
								<a href="javascript:void(0)" hidefocus="true" data-order="1"
									class="quealltab onactive"></a> <a href="javascript:void(0)"
									hidefocus="true" data-order="2" class="quealltab "></a>
							</div>
						</div>
						
				 
						 <div class="answertabcon">
							<div class="wenda-listcon clearfix">
								<div class="headslider l">
									<a href="#"
										class="wenda-head"   title="泡粉15724712682">
										<img
										src="${pageContext.request.contextPath}/study/images/xiaoxin.jpg"
										alt="泡粉15724712682" width="40"> <i
										class="icon-ques-revert nofinish"></i>
									</a>
								</div>
								<div class="wendaslider">
									<h2 class="wendaquetitle">
										<a href="#"
											  title="泡粉15724712682" class="wenda-nickname">泡粉15724712682</a>
										<div class="wendatitlecon">
											<a href="#"
												  class="wendatitle"> <b> 111111122222
											</b>
											</a>
										</div>
									</h2>
									<div class="replycont clearfix">
										<div class="fl replydes">
											<span class="replysign praise"> <a
												href="#"
												  title="泡哥6081133" class="nickname">
											</a> 
											</span> <span class="replydet"></span>
										</div>
									</div>
									<div class="replymegfooter clearfix">
										<div class="wenda-time l">
											<em></em>
										</div>
										<a href="answer.jsp"  
											class="replynumber r hasanswernum"> <span class="ys">
												<b class="numShow"></b> <span class="number"></span>
										</span> <span class="browsenum"> <b class="numShow"></b> <span
												class="number"></span>
										</span>
										</a>
									</div>
								</div>
							</div>
						</div> 
						
						<div class="page discuss-list-page"></div>
					</div>  

				</div>
				
					
				<!-- 问答模块 结束 -->

				<!-- 笔记模块  -->
				<div id="note-content" class="list-tab-con" style="">
					<div id="noteLoadListData">
						<div class="course-tool-bar clearfix js-select-state">
							
                             <!-- 笔记滑动开关 -->							
								<div class="tool-right r" style="margin-top: -35px;">
								<!-- 查看笔记选择分类   -->
								<div class="switch-box" >                 
									 <input id="default" class="switch-box-input" type="checkbox" onclick="choose1(${userId},${videoId })"/><!--顺序 userId  video_id -->
									 <label for="default" class="switch-box-slider " id="Label1" ></label>
									 <label for="default" class="switch-box-label " id="Label2"  >只看我的</label>
								</div>
							</div>

						</div>

						<div id="course_note" class="course_note">
							<div class="unnote">
								<p>此节暂无同学记录过笔记</p>
							</div>
						</div>
						<div id="course_note" class="course_note">
							<ul id="wys_Notes">
							     <!-- 我的笔记 -->

									</ul>
								</div>

						<div class="page note-list-page"></div>
					</div>
				</div>
				<!-- 笔记模块结束 -->

			</div>

		</div>
		<!-- 视频下 的   评论 问答 笔记  选项 结束  -->

		<div class="course-right clearfix">
			<!-- 大家都关注 + 推荐课程  的部分 -->
			<div class="js-recom-box">

				<!-- 推荐课程 的部分   个数自己定-->
				<div class="box mb40 recom-course-list-box">
					<h4>推荐课程</h4>
					<ul class="js-recom-course recom-course-list clearfix">
						<li class="clearfix"><a href="javascript:void(0)" class="clearfix"
							 >
								<div class="l course-img" style="background-image: url(#);">
									<div class="cart-color blue"></div>
								</div>
								<div class="l content-box">
									<p class="smalle-title">初识机器学习-理论篇</p>
									<p class="content-text" title="标题..  ">推荐理由</p>
									<div class="clearfix learn-detail">
										初级<span>·</span>52183人在学
									</div>
								</div>
						</a></li>
						
					</ul>
				</div>
				<!-- 推荐课程 的部分   结束-->
			</div>
			<!-- 笔记推荐 部分 -->
			<div class="articlelist js-right-article" style="display: block;">
				<div class="course-right-title">
					<h3>手记推荐</h3>
					<a href="javascript:void(0)"
						  class="more">更多</a>
				</div>
				<div class="course-right-content"></div>
				<ul>
					<li><a href="javascript:void(0)"  >python关键知识点之--__new__与__init__与super
					</a></li>
					<li><a href="javascript:void(0)"  >逻辑判断需要注意运算的法则</a></li>
					<li><a href="javascript:void(0)"  >学习python中 面向对象</a></li>
					<li><a href="javascript:void(0)"  >除了 Python ，这些语言也可以写机器学习项目</a></li>
				</ul>
			</div>
			<!-- 笔记推荐 部分结束 -->
		</div>
	</div>

	<!-- 底部内容  -->
	<div id="footer">
		<%@include file="footer_black.jsp" %>
	</div>
	<!-- 底部内容结束   -->

	<!--问答弹出框 通用-->	
	<div id="video_mark" class="video_mark" style="display: none;"></div>

	<div class="moco-usercard-dialog js-moco-usercard-modal"></div>

<!-- 提问 笔记 弹出层事件函数 -->
<script type="text/javascript">
/*
 *提问弹出层函数
 */

 $(document).on('click', '#wys_question', function() {
	 layer.open({ 
         type : 2,
         border : [1 , 1 , 'gray', true],  
         //shade: 0, 
         shadeClose:true,
         title : ['<div style="text-align: center">提 问</div >',true],  
         content:'${pageContext.request.contextPath}/study/questions.jsp',
         area : ['500px' , '420px'],  
         offset : ['100px',''], 
         resize:false
     });  
	 
	 
	});
/*
 *笔记弹出层
 
 */

 $(document).on('click', '#wys_note', function() {
	 layer.open({ 
         type : 2,
         border : [1 , 1 , 'gray', true],  
         shadeClose:true,
         title : ['<div style="text-align: center">笔 记</div >',true],  
         content:'${pageContext.request.contextPath}/study/self_note.jsp',
         area : ['500px' , '320px'],  
         offset : ['100px',''], 
         resize:false
     }); 
	});


</script>

</body>
</html>
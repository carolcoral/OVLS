<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>兄弟学习网</title>
<base href="/">
<link rel="stylesheet"
	href="study/static/moco/v1.0/dist/css/moco.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="study/css/common.css"
	type="text/css">
<link rel="stylesheet"
	href="study/css/pagination.css"
	type="text/css">
<!-- 网页标题栏图标 -->
<link rel="SHORTCUT ICON" href="favicon.ico" />

<!--问答评论区切换的实现-->
<link rel="stylesheet"
	href="study/static.mukewang.com/static/css/lv_course_1.css"
	type="text/css"/>
<link rel="stylesheet"
	href="study/static.mukewang.com/static/css/lv_course_2.css"
	type="text/css"/>
<link rel="stylesheet"
	href="study/static.mukewang.com/static/css/lv_course_3.css"
	type="text/css"/>
<link rel="stylesheet"
	href="study/static.mukewang.com/static/css/lv_course_4.css"
	type="text/css"/>
<link rel="stylesheet"
	href="study/static.mukewang.com/static/css/lv_course_5.css"
	type="text/css"/>

<link href="study/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
div.panel-body {
	background-color: #F3F5F7;
	margin: 5px;
}

.autowrap {
	border: none;
}
#img{
	width: 45%;
	height: 60%;
	float: right;
}
#lv_icon1{
	position: absolute;
	left: -5px;
	top: 20px;
}
#lv_icon3{
/* 	position: relative;
	left: 550px;
	top: 5px; */ 
	position: absolute;
	right: 0px;
	top: 25px;
}
#favorite:hover {
	cursor: pointer;
}
</style>
</head>

<body>

	<%@include file="head_black.jsp"%>


	<div id="main">

		<div class="course-infos">
			<div class="w pr">
				<div class="path">
					<a href="javascript:void(0)">课程</a> <i class="path-split">\</i> <a
						href="javascript:void(0)">Java</a>
					<i class="path-split">\</i> <a
						href="#">Java</a>
					
				</div>
				<div class="hd clearfix">
					<h2 class="l" id="course_name"></h2>
				</div>

				<div class="statics clearfix"><h1>
					<div class="moco-btn l learn-btn green-btn red-btn">
						  <a href="video.jsp" class="J-learn-course">开始学习</a> <em></em> 
					</div>
					<div class="static-item l">
						<span class="meta">学习人数</span> <span
							class="meta-value js-learn-num" id="course_learnCount"></span>
					</div>
					<div class="static-item l">
						<span class="meta">难度级别</span> 
						<span class="meta-value" id="course_difficulty"></span>
						<em></em>
					</div>
					<div class="static-item l">
						<span class="meta">课程时长</span> 
						<span class="meta-value" id="course_learnTime"></span> <em></em>
					</div>
					<div class="static-item l score-btn">
						<span class="meta">综合评分</span> 
						<span class="meta-value" id="course_score"></span>
						<em></em>
					</div>
					<div class="static-item l">
						<span class="meta">收藏</span> 
						<span id="favorite" class="meta-value">xx</span>
						<em></em>
					</div>
				</div>
				<div class="extra">
					<!-- credit -->
					<!-- share -->
					
				</div>
			</div>
			<div class="info-bg" id="js-info-bg">
				<div class="cover-img-wrap">
					<img data-src="img/55af49b300018ffc06000338.jpg" alt=""
						style="display: none" id="js-cover-img">
				</div>
				<div class="cover-mask"></div>
			</div>

		</div>

		<div class="course-info-main clearfix w">
			<div class="content-wrap">
				<div class="content">
					<!-- 课程简介 -->
					<div class="course-brief">
						<p class="auto-wrap" id="course_intro"></p>
					</div>
					<!-- 课程简介 end -->
					<div class="mod-tab-menu ">
						<ul class="course-menu clearfix">
							<li><a class="ui-tabs-active active" id="learnOn">
								<span id="zxy_zhangjie">章节</span></a></li>
							<li><a id="commentOn" class=""><span
									id="zxy_pinglun">评论</span></a></li>
							<li><a id="noteOn" class=""><span
									id="zxy_biji">笔记</span></a></li>
						</ul>
					</div>

					<!-- 课程章节 -->
					<div id="chapter_list" class="mod-chapters">

						<!-- 1章节开始 ,利用ajax加载章节和视频列表元素-->
						
						
					</div>

					<!-- 课程章节 end -->

					<!-- 评论开始 -->
					<!--发布评论   zxy-->
					<div>
						<ul class="mod-post" id="comment-list">
						<!-- 引入动态展示评论模块 -->
							
							<li class='post-row' id='63036'>
								<div class='media'>
									<a href='' target='_blank'>
									<img src='study/avatars/paopao.jpg' width='40' height='40'>
									</a>
								</div>
								<div class='bd'>
									<div class='tit'>
									<a href='#' target='_blank'>小泡</a>
									</div>
									<p class='cnt'>好hao好hao好hao好hao</p>
									<div class='footer clearfix'>
										<span title='创建时间' class='l timeago'>时间：2017-01-01 12:30:01"</span>
										<a title='赞' class='js-pl-praise list-praise r' data-id='452768'>
										<img src='study/images/iconzan.jpg' id='lick_count_a' >
										<span id='zxy_like_count"+elt_id+"'>212</span></a>
									</div>
								</div>
							</li>
														<li class='post-row' id='63036'>
								<div class='media'>
									<a href='' target='_blank'>
									<img src='study/avatars/paopao.jpg' width='40' height='40'>
									</a>
								</div>
								<div class='bd'>
									<div class='tit'>
									<a href='#' target='_blank'>小泡</a>
									</div>
									<p class='cnt'>好hao好hao好hao好hao</p>
									<div class='footer clearfix'>
										<span title='创建时间' class='l timeago'>时间：2017-01-01 12:30:01"</span>
										<a title='赞' class='js-pl-praise list-praise r' data-id='452768'>
										<img src='study/images/iconzan.jpg' id='lick_count_a' >
										<span id='zxy_like_count"+elt_id+"'>212</span></a>
									</div>
								</div>
							</li>
						</ul>
						<!-- 分页内容 -->

						<!-- <div class="M-box2"></div> -->

					</div>


					<!-- 评论结束 -->

					<!-- 笔记开始 -->

			 		<ul id="js-note-container" class="mod-post">
						<li id="1785838" class="post-row js-find-txt" courseid="36"
							noteId="1785838" authorid="5521765">
							<div class="media">
								<a href="/u/5521765/courses" target="_blank"><img
									src="http://img.mukewang.com/5959a6570001bb7e01000100-40-40.jpg"
									width="40" height="40"></a>
							</div>
							<div class="bd">
								<div class="tit">
									<a href="/u/5521765/courses" target="_blank">qq_别来无恙_27</a>
								</div>
								<div class="js-notelist-content notelist-content mynote">
									<pre class="autowrap"> 2.&quot;_top&quot;、&quot;_blank&quot;、&quot;_self&quot;具有特殊意义的名称。
       _blank：在新窗口显示目标网页
       _self：在当前窗口显示目标网页
       _top：框架网页中在上部窗口中显示目标网页</pre>
									<div class="notelist-content-more">
										<a href="javascript:;" class="js-toggle-content">[ 查看全文 ]</a>
									</div>
								</div>
								<div class="clearfix">
									<input class="moco-btn moco-btn-green sava_btn" type="button"
										value="保存">
								</div>
								<div class="footer clearfix">
									<span title="13分钟前" class="l timeago">时间：13分钟前</span> <a
										href="/code/412" class="from l">源自：2-5
										JavaScript-打开新窗口（window.open）</a>
									<div class="actions r">
										<textarea style="display: none;"> 2.&quot;_top&quot;、&quot;_blank&quot;、&quot;_self&quot;具有特殊意义的名称。
       _blank：在新窗口显示目标网页
       _self：在当前窗口显示目标网页
       _top：框架网页中在上部窗口中显示目标网页</textarea>
										<a title="采集" href="javascript:;"
											class="Jcollect post-action " data-mid="412|5521765"> <i>采集</i>
											<em>0</em>
										</a> <a title="赞" href="javascript:;" class="Jpraise post-action "
											data-mid="412"> <span class="icon-thumb-revert"></span> <em>0</em>
										</a>
									</div>
								</div>
							</div>
						</li>
						<li id="1785781" class="post-row js-find-txt" courseid="36"
							noteId="1785781" authorid="5521765">
							<div class="media">
								<a href="/u/5521765/courses" target="_blank"><img
									src="http://img.mukewang.com/5959a6570001bb7e01000100-40-40.jpg"
									width="40" height="40"></a>
							</div>
							<div class="bd">
								<div class="tit">
									<a href="/u/5521765/courses" target="_blank">qq_别来无恙_27</a>
								</div>
								<div class="js-notelist-content notelist-content mynote">
									<pre class="autowrap">
第四种:输出HTML标签，并起作用，标签使用&quot;&quot;括起来。
&lt;script type=&quot;text/javascript&quot;&gt;
  var mystr=&quot;hello&quot;;
document.write(mystr+&quot;&lt;br&gt;&quot;);//输出hello后，输出一个换行符
  document.write(&quot;JavaScript&quot;);
&lt;/script&gt;</pre>
									<div class="notelist-content-more">
										<a href="javascript:;" class="js-toggle-content">[ 查看全文 ]</a>
									</div>
								</div>
								<div class="clearfix">
									<input class="moco-btn moco-btn-green sava_btn" type="button"
										value="保存">
								</div>
								<div class="footer clearfix">
									<span title="38分钟前" class="l timeago">时间：38分钟前</span> <a
										href="/code/407" class="from l">源自：2-1
										JavaScript-输出内容（document.write）</a>
									<div class="actions r">
										<textarea style="display: none;">第四种:输出HTML标签，并起作用，标签使用&quot;&quot;括起来。
&lt;script type=&quot;text/javascript&quot;&gt;
  var mystr=&quot;hello&quot;;
document.write(mystr+&quot;&lt;br&gt;&quot;);//输出hello后，输出一个换行符
  document.write(&quot;JavaScript&quot;);
&lt;/script&gt;</textarea>
										<a title="采集" href="javascript:;"
											class="Jcollect post-action " data-mid="407|5521765"> <i>采集</i>
											<em>0</em>
										</a> <a title="赞" href="javascript:;" class="Jpraise post-action "
											data-mid="407"> <span class="icon-thumb-revert"></span> <em>0</em>
										</a>
									</div>
								</div>
							</div>
						</li>
					</ul>

					<!-- 笔记结束 -->

				</div>

				<!--content-wrap end-->
				<div class="aside r ">
					<div class="bd ">
						<div class="js-recom-box ">
						
							<div class="box mb40 recom-course-list-box ">
								<h4>推荐课程</h4>
								<ul class="js-recom-course recom-course-list clearfix ">
									<li class="clearfix "><a href="javascript:void(0)"
										class="clearfix "  >
											<div class="l course-img "
												style="background-image: url(img/cover015_s.jpg);">
												<div class="cart-color purple "></div>
											</div>
											<div class="l content-box ">
												<p class="smalle-title ">测试克隆泡泡网</p>
												<p class="content-text " title="asfsafsafsafsadfsafsad ">asfsafsafsafsadfsafsad</p>
												<div class="clearfix learn-detail ">
													初级<span>·</span>138人在学
												</div>
											</div>
									</a></li>
									<li class="clearfix "><a href="javascript:void(0)"
										class="clearfix "  >
											<div class="l course-img "
												style="background-image: url(img/cover015_s.jpg);">
												<div class="cart-color purple "></div>
											</div>
											<div class="l content-box ">
												<p class="smalle-title ">测试克隆泡泡网</p>
												<p class="content-text " title="asfsafsafsafsadfsafsad ">asfsafsafsafsadfsafsad</p>
												<div class="clearfix learn-detail ">
													初级<span>·</span>138人在学
												</div>
											</div>
									</a></li>
									<li class="clearfix "><a href="javascript:void(0)"
										class="clearfix "  >
											<div class="l course-img "
												style="background-image: url(img/cover015_s.jpg);">
												<div class="cart-color purple "></div>
											</div>
											<div class="l content-box ">
												<p class="smalle-title ">测试克隆泡泡网</p>
												<p class="content-text " title="asfsafsafsafsadfsafsad ">asfsafsafsafsadfsafsad</p>
												<div class="clearfix learn-detail ">
													初级<span>·</span>138人在学
												</div>
											</div>
									</a></li>
									<li class="clearfix "><a href="javascript:void(0)"
										class="clearfix "  >
											<div class="l course-img "
												style="background-image: url(img/cover015_s.jpg);">
												<div class="cart-color purple "></div>
											</div>
											<div class="l content-box ">
												<p class="smalle-title ">测试克隆泡泡网</p>
												<p class="content-text " title="asfsafsafsafsadfsafsad ">asfsafsafsafsadfsafsad</p>
												<div class="clearfix learn-detail ">
													初级<span>·</span>138人在学
												</div>
											</div>
									</a></li>
									<li class="clearfix "><a href="javascript:void(0)"
										class="clearfix "  >
											<div class="l course-img "
												style="background-image: url(img/cover015_s.jpg);">
												<div class="cart-color purple "></div>
											</div>
											<div class="l content-box ">
												<p class="smalle-title ">测试克隆泡泡网</p>
												<p class="content-text " title="asfsafsafsafsadfsafsad ">asfsafsafsafsadfsafsad</p>
												<div class="clearfix learn-detail ">
													初级<span>·</span>138人在学
												</div>
											</div>
									</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="clear "></div>

		</div>
		<!-- 视频介绍 -->
		<div id="js-video-wrap " class="video pop-video "
			style="display: none">
			<div class="video_box " id="js-video "></div>
			<a href="javascript:; " class="pop-close icon-close "></a>
		</div>

	</div>

	<!-- 插入底部代码 -->

	<%@include file="footer_black.jsp"%>
</body>
<script type="text/javascript" src="study/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
var id = '${param.id}';
$(function(){
	//查询课程详情
	loadCourse(id);
	//查看课程章节和视频
	loadChapterVideos(id);
});

function loadChapterVideos(id){
	//将评论和笔记区域隐藏
	$("#comment-list").hide();
	$("#js-note-container").hide();
	//加载章节和视频列表
	$.ajax({
		url:"http://localhost:8003/video/course/"+id,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status==1){
				var chapters = result.data;
				for(var i=0;i<chapters.length;i++){
					var chapter_id = chapters[i].id;
					var chapter_name = chapters[i].name;
					var videos = chapters[i].videos;
					//拼一个章节列表元素
					var str = '';
					str+='<div class="panel chapter">';
					str+='	<div class="panel-heading">';
					str+='		<h4 class="panel-title">';
					str+='			<a data-toggle="collapse" data-parent="javascript:void(0)">';
					str+='				<h3>';
					str+='					<img src="study/course/icon/lv_icon1.jpg"  id="lv_icon1">';
					str+='					<strong>';
					str+='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+chapter_name;
					str+='						<img alt="" src="study/course/icon/lv_icon2.jpg"  id="lv_icon2">';
					str+='					</strong>';
					str+='						<img alt="" src="study/course/icon/lv_icon3.jpg"  id="lv_icon3">';
					str+='				</h3>';
					str+='			</a>';
					str+='		</h4>';
					str+='	</div>';
					str+='	<div  class="panel-collapse">';
					
					for(var j=0;j<videos.length;j++){
						var video_id = videos[j].id;
						var video_name = videos[j].name;
						//拼一个视频列表元素
						str+='		<div class="panel-body">';
						str+='			<a href="video.html?vid='+video_id+'">'+video_name;
						str+='			<button class="r moco-btn moco-btn-blue preview-btn">开始学习</button></a>';
						str+='		</div>';
					}
					
					str+='	</div>';
					str+='</div>';
					
					//将章节元素添加到列表div
					$("#chapter_list").append(str);

				}
				//添加动态手风琴特效
				$("#chapter_list").slide({
					titCell:".chapter", 
					targetCell:".panel-collapse",
					defaultIndex:0,
					effect:"slideDown",
					delayTime:300,
					returnDefault:false,
					trigger:"click"
				});
			}
		}
	});
};

function loadCourse(id){
	$.ajax({
		url:"http://localhost:8002/course/"+id,
		type:"get",
		dataType:"json",
		success:function(result){
			if(result.status==1){
				var course = result.data;
				//将课程信息显示到页面
				$("#course_name").html(course.name);
				$("#course_learnCount").html(course.learnCount);
				$("#course_difficulty").html(course.difficulty);
				$("#course_score").html(course.score);
				$("#course_learnTime").html(course.learnTime);
				$("#course_intro").html(course.intro);
			}
		}
	});
};
</script>

</html>
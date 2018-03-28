<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/muke.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/study/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/study/js/jquery.SuperSlide.2.1.1.js"></script>
<!-- 主页调用顶部部分 -->
<style>
	/*头部背景样式*/
	
	.img_backg1 {
		background-color: #F3F5F7;
		height: 70px;
	}
	/*所有课程样式*/
	
	.all_course {
		position: absolute;
		top: 29px;
		left: 180px;
		height: 30px;
		width: 74px;
		border-radius: 3px;
	}
	
	.all_course a {
		color: #000;
		font-size: 16px;
		font-weight: 700;
		text-decoration: none;
		position: relative;
		top: -26px;
		right: -3px;
	}
	
	/*课程中心样式*/
	
	.course_center {
		position: absolute;
		top: 29px;
		left: 300px;
		height: 30px;
		width: 74px;
		border-radius: 3px;
	}
	
	.course_center a {
		color: #02A1E9;
		font-size: 16px;
		font-weight: 700;
		text-decoration: none;
		position: relative;
		top: -26px;
		right: -3px;
	}
	
	/*个人中心样式*/
	
	.persional_center {
		position: relative;
		top: 29px;
		left: 275px;
		height: 30px;
		width: 74px;
		border-radius: 3px;
	}
	
	.persional_center a {
		color: #02A1E9;
		font-size: 16px;
		font-weight: 700;
		text-decoration: none;
		position: relative;
		top: -26px;
		right: -3px;
	}
		/*安全退出样式*/
	.index {
		position: absolute;
		top: 29px;
		left: 520px;
		height: 30px;
		width: 74px;
		border-radius: 3px;
	}
	.index a {
		color: #02A1E9;
		font-size: 16px;
		font-weight: 700;
		text-decoration: none;
		position: relative;
		top: -26px;
		right: -3px;
	}
	
	/*登录按钮样式*/
	
	#log_reg {
		position: relative;
		top: -3px;
		right: 3px;
		float: right;
	}
	
	#example1,
	#example2 {
		float: right;
		position: relative;
		color: #333333;
		background: #A9AAAE;
		text-decoration: none;
		padding: 0px 12px;
		margin: 27px 10px 0px 15px;
		border-radius: 3px;
		opacity: 0.6;
		filter: alpha(opacity=60);
		line-height: 31px;
	}
	
	/*  登录后头像   */
	#lv-img{
	width:50px;
	height:50px; 
	border-radius:50%;
	position: relative;
	right: 30px;
	}
	
	
	
</style>
<!-- 顶部 -->
<div class="width100 float_l height490 img_backg1">
	<div class="width100 float_l height80 line_hei80">
		<!-- 顶部左边 -->
		<div class="float_l">
			<div class="float_l margin_l20">
				<img src="${pageContext.request.contextPath}/study/img/uiz1.png">
			</div>
			<div class="float_r">
				<div class="all_course">
					<a href="index.jsp">所有课程</a>
				</div>
				<div class="course_center">  
					<a id="sgy_course" href="${pageContext.request.contextPath}/exam/home.html">在线测评</a>
				</div>
				<div class="persional_center">
					<a id="sgy_usercenter" href="user_center.jsp">个人中心</a>
				</div>
				<div class="index">
					<a id="sgy_delete" href="#">安全退出</a>
				</div>
			</div>
		</div>

		<!-- 顶部右边 -->
		<div class="float_r">
			<div class="float_l top_input">
				<input class="posi_relative" type="text" name="" id="search_id" placeholder="请输入..."> 
				<img class="img_sousuo bianshou" src="img/uiz4.png" onclick="javascript:window.location='search.jsp'">
			</div>
			
		
				<div id="log_reg">
				<a href="#" id="example1">注册</a>
				<a href="#" id="example2">登录</a>
				</div>
		</div>

	</div>
</div>

<!-- 这里导入弹出层插件 -->
<script type="text/javascript" src="layer/layer.js"></script>

<script type="text/javascript">

$(function(){
	var userId = sessionStorage.userId;
	var token = sessionStorage.token;
	if(userId!=null&&token!=null){
		$("#log_reg").hide();
		//TODO 可以利用ajax加载个人信息显示
	}
});

/*
 *注册弹出层事件函数 
 
 */
$(document).on('click', '#example1', function() {
	 layer.open({ 
        type : 2,
        border : [1 , 1 , 'gray', true],  
        shade : [0.5 , '#000' , true],  
        shadeClose:true,
        title : false, 
        content:'regist.jsp',
        area : ['450px' , '450px'],  
        offset : ['100px',''],  
    }); 
	 
	 
	});
/*
 *登录弹出层事件函数 
 
 */

	
$(document).on('click', '#example2', function() {
	 layer.open({ 
       type : 2,
       border : [1 , 1 , 'gray', true],  
       shade : [0.5 , '#000' , true],  
       shadeClose:true,
       title : false,  
       content:'login.jsp',
       area : ['450px' , '450px'],  
       offset : ['100px',''],  
   }); 
	 
	 
	});


</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/common-less.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/profile-less.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/oplog-less.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/base.css" type="text/css">
<!-- 网页标题栏图标 -->
	<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/study/favicon.ico"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/study/js/jquery.js"></script>

<!-- 这是显示隐藏 -->
<style type="text/css">
.M-box2 {
	bottom: 22px;
}
.img_sousuo {
		position: relative;
		left: -25px;
	    top:12px;
	}
/* #layui-layer100001{
	z-index: 19991015;
	width: 330px;
	height: 330px;
	top: 62px;
	left: 1270px;
}  */
.icon-right2{

	position: absolute;
	top: 18px;

}
#yyy_name,#yyy_oldpass,#yyy_newpass,#yyy_submitpass{
  width:400px;
}
#yyy_img{
  width:40px;
}
#yyy_submit{

	margin: 0 0 0 300px;

}
.lv_icon_right{
	position: relative;
	top: 16px;
}

</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/style/pagination.css" type="text/css" media="screen">
 

<!-- 头像上传脚本 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/font-awesome.4.6.0.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/amazeui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/amazeui.cropper.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/study/css/custom_up_img.css">
</head>
<body>

    <%@include file="head_black.jsp" %>
    <!-- 页头结束 -->

<div id="main">

<div class="settings-cont clearfix">
  <div class="setting-left l" >
    <div class="avator-wapper">
      <div class="avator-mode" >
        <img id="up-img-touch" onmouseover="mOver()" class="avator-img" alt="图片去哪里啦?" src="${pageContext.request.contextPath}/study/img/Java.png"  width="92" height="92">
      </div>
      
            <!-- 头像上传插件代码开始 -->
      <div class="am-modal am-modal-no-btn up-frame-bj " tabindex="-1" id="doc-modal-1">
  <div class="am-modal-dialog up-frame-parent up-frame-radius">
	<div class="am-modal-hd up-frame-header">
	   <label>修改头像</label>
	  <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
	</div>
	<div class="am-modal-bd  up-frame-body">
	  <div class="am-g am-fl">
		<div class="am-form-group am-form-file">
		  <div class="am-fl">
			<button type="button" class="am-btn am-btn-default am-btn-sm">
			  <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
		  </div>
		  <input type="file" id="inputImage">
		</div>
	  </div>
	  <div class="am-g am-fl" >
		<div class="up-pre-before up-frame-radius">
			<img alt="" src="" id="image" >
		</div>
		<div class="up-pre-after up-frame-radius">
		</div>
	  </div>
	  <div class="am-g am-fl">
		<div class="up-control-btns">
			<span class="am-icon-rotate-left"  onclick="rotateimgleft()"></span>
			<span class="am-icon-rotate-right" onclick="rotateimgright()"></span>
			<span class="am-icon-check" id="up-btn-ok" url="#"></span>
		</div>
	  </div>
	  
	</div>
  </div>
</div>

<!--加载框-->
<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
  <div class="am-modal-dialog">
	<div class="am-modal-hd">正在上传...</div>
	<div class="am-modal-bd">
	  <span class="am-icon-spinner am-icon-spin"></span>
	</div>
  </div>
</div>

<!--警告框-->
<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
  <div class="am-modal-dialog">
	<div class="am-modal-hd">信息</div>
	<div class="am-modal-bd"  id="alert_content">
			  成功了
	</div>
	<div class="am-modal-footer">
	  <span class="am-modal-btn">确定</span>
	</div>
  </div>
</div>
      <!-- 头像上传插件代码结束 -->
      <div class="des-mode">
        <p>${user.nick_name}</p>
        <dl class="js-auth-list clearfix auth-list">
        <img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon4.jpg" >
        </dl>
      </div>
    </div>

     <div class="list-wapper">
      <h2>账户管理</h2>
      <div class="line"></div>
      <ul class="menu">
        <li><a href="user_changepwd.jsp">密码修改<span class="arr">
        <img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon5.jpg" class="lv_icon_right">
        </span></a>
        </li>
        <li><a href="user_center.jsp">个人信息<span class="arr">
        <img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon5.jpg" class="lv_icon_right">
        </span></a></li>
        <li><a href="user_loginrecord.jsp">登录记录<span class="arr">
        <img alt=""  src="${pageContext.request.contextPath}/study/images/lv_icon5.jpg" class="lv_icon_right">
        </span></a></li>
        </ul>
    </div>
  </div>
  
<!-- 主体右部开始 -->

<!-- 主体右部登录记录开始 -->
<div id="record" class="setting-right">
    <div class="setting-right-wrap wrap-boxes settings">
        
<div class="page-settings">
    <div class="common-title">
        &nbsp;&nbsp;&nbsp;&nbsp;操作记录<span class="title-tips">通过查看操作类型、登录时间、登录地点和设备可以判断账号是否正常</span>
    </div>
    <div class="line"></div>
    <div class="setting ">
        <div class="contentBox">
            <table class="oplog-list">
                <tbody><tr>
                    <th>类型</th>
                    <th>登录时间</th>
                    <th>城市</th>
                    <th>IP</th>
                    <th>登录设备</th>
                </tr>
              
                <tr>
                    <td>账号登录</td>
                    <td>2017-7-1</td>
                    <td>北京</td>
                    <td>192.168.4.3</td>
                    <td>web</td>
                </tr>
          		<tr>
                    <td>账号登录</td>
                    <td>2017-7-1</td>
                    <td>北京</td>
                    <td>192.168.4.3</td>
                    <td>web</td>
                </tr>
           		</tbody></table>
        </div>
     </div>
</div>

</div>
 
  </div>

<!-- 主体右部操作记录结束 -->
<!-- 主体右部结束 -->
</div>
<!-- 主体结束 -->
</div>
<!-- 页脚开始 -->
<%@include file="footer_black.jsp" %>
<!-- 页脚结束 -->


      
</body>
</html>
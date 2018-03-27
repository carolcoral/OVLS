 $(function(){
	 
	 //获取总页码,如果没有值则设置初始值10
	 var pages = $("#lv_pages").text();
	 if(pages==null){
		 pages = 10;
	 }
	 
	 //获取当前页码，如果没有值则设置初始值1
	 var currentPage = $("#lv_currentPage").text();
	 if(currentPage==null){
		 currentPage = 1;
	 }
	 
	 
	$('.M-box2').pagination({
	    coping:true,
	    homePage:'首页',
	    endPage:'末页',
	    prevContent:'上页',
	    nextContent:'下页',
	    pageCount: pages,
	    current: currentPage,
	    callback:function(api){
	    	//当前页码
           	var id=api.getCurrent();
           	
           	//当前url
           	var url = location.href;
           	var  arr = url.split("&");
           	var url2 = arr[0]+"&"+arr[1]+"&page="+id;
           	
        	//页面跳转
           	window.location.href = url2;
           }
	
	});
	
	
	//第一次进入页面，设置颜色
	$("#lv_s1").hide();
	$("#lv_d1").hide();
	$("#lv_sort1").hide();
	   var sid = $("#lv_s1").text();
	   var did = $("#lv_d1").text();
	   //alert("s:"+sid +"  d:"+did);
	   $("#s_"+sid).removeClass("course-nav-item");
	   $("#s_"+sid).addClass("course-nav-item-on");
	   $("#d_"+did).removeClass("course-nav-item");
	   $("#d_"+did).addClass("course-nav-item-on");

	 	//点击排序，切换颜色
	   var sortId = $("#lv_sort1").text();
	   $("#lv-sort-"+sortId).css("color","red");

	   //点击方向，切换颜色
	   $(".course-nav-item").click(function(){
	       $(this).removeClass("course-nav-item");
	       $(this).addClass("course-nav-item-on");
	       $(this).siblings().removeClass("course-nav-item-on");
	       $(this).siblings().addClass("course-nav-item");
	   });
	   
	   
	
	
	
 });
 
 //点击方向，局部刷新学科
 function lv_show_subjects(dirctionId){
	 //更改当前元素样式
	 
	 //局部刷新学科内容
	 requestUrl = "show_subjects/"+dirctionId;
	 $.ajax({
		 url: requestUrl,
		 type: "GET",
		 dataType: "json",
		 success:function(data){
			 $("#lv_show_subjects").html(" ");
			 for(var i=0; i<data.length; i++){
				 var subject = data[i];
				 var subjectUrl = "course_list?d="+dirctionId+"&s="+subject.id;
				 $("#lv_show_subjects").append("<li class='course-nav-item' id=''><a href="+subjectUrl+"><span id='d1'>"+subject.name+"</span></a></li>");
			 }
		 },
		 error:function(){
			 
		 }
	 });
	 
 }

 
 
 $(function(){
	 
	 //获取总页码,如果没有值则设置初始值10
	 var pages = $("#lv_pages").text();
	 if(pages==null){
		 pages = 10;
	 }
	 
	 //获取当前页码，如果没有值则设置初始值1
	 var currentPage = $("#lv_currentPage").text();
	 //alert(currentPage);
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
           	var url2 = arr[0]+"&page="+id;
           	
        	//页面跳转
           	window.location.href = url2;
           }
	
	});
 });
 

 
 
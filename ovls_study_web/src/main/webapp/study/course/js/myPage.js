 $(function(){
	$('.M-box2').pagination({
	    coping:true,
	    homePage:'首页',
	    endPage:'末页',
	    prevContent:'上页',
	    nextContent:'下页',
	    pageCount: 20,
	    current_page: 1,
	    callback:function(api){
           	var id=api.getCurrent();
           	//alert("当前页码："+id+" 总页码："+page);
           	$.ajax({
           		url:"http://localhost:8090/TestPage/find.do" ,
           		type:"GET",
           		data: null,
           		dataType:"text",
           		success:function(data){
           			api.setPageCount(30);
           			count=api.getPageCount();
           			//发送ajax请求获取数据展示
           		}
           	});
        
           }
	
	});
 });
 

 
 
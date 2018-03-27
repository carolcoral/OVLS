/**
 * 通过笔记id删除一条笔记
 * @param id 笔记id
 * @returns
 */
function wys_delNote(id){
	//alert("进入删除异步函数 ");
	$.ajax({
		url:"http://localhost:8090/pponline/note/"+id,
		type:"delete",
		dataType:"json",
		success:function(data){
			if(data>0){
				alert("删除成功");//移除该div块
				$("#wys_remove"+id).remove();
			}else{
				alert("删除失败");
			}
			
		},
		error:function(){
			alert("系统错误");
		}
	});
}
//选中笔记,隐藏评论模块 问答模块,查询所有相关笔记进行显示,下面的 只看我的笔记 看切换显示分类
function wys_bj(video_id,userId){
	$("#pl-content").hide();
	$("#qa-content").hide();
	$("#note-content").show();
	//字体颜色
	$("#plMenu").css("color", "#4D555D");
	$("#qaMenu").css("color", "#4D555D");
	$("#noteMenu").css("color", "red");
    //查看本视频的笔记
	$("#wys_Notes").empty();//清空
    //查找所有该视频的笔记
   // alert("显示othersNote");
  //获取项目绝对路径
    var strFullPath = window.document.location.href;
    var strPath = window.document.location.pathname;
    var pos = strFullPath.indexOf(strPath);
    var prePath = strFullPath.substring(0, pos);
    var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
    
    $.ajax({
    	    url:"http://localhost:8090/pponline/notes",
    	    data:{"video_id":video_id,"userId":userId},
    	    type:"POST",
			dataType:"json",
			success:function(data){
				//alert(data);
				for(var i=0;i<data.length;i++){
					var id = data[i].id;                     //笔记id  
					var count = data[i].count;  //获取收藏数 
					//alert("count:"+count);
					//alert("id:"+id);
				    var context = data[i].context;          //笔记内容
				    var publish_time = data[i].publish_time;  //时间
				    var like_count = data[i].like_count;       //赞的人数
				    var uname = data[i].user.name;             //用户名
				    var image = data[i].user.image;          //用户头像
				    var uid = data[i].user.id;              //用户id
				    //根据笔记id,查询出被收藏数
							var str = "<li class='post-row js-find-txt'  id='wys_remove"+id+"'>" + 
							"<div class='notelist_headpic'><a href='#' target='_blank'> <img src='"+ postPath +"/img/"+image+"' width='40' height='40'></a></div>" +
							"<div class='notelist_content'>"+
							"<div class='u_name'><a href='#' target='_blank'>"+uname+"</a></div><div class='js-notelist-content notelist-content mynote'>"+
							"<pre>"+context+"</pre><div class='notelist-content-more'><a href='#' class='js-toggle-content'>[查看全文]</a>"+
							"</div></div><div class='clearfix'><a href='#' class='sava_btn'>保存</a></div><div class='notelist-bottom clearfix'>"+
							"<span title='1498911399' class='l timeago'>"+publish_time+"</span><div class='notelist-actions'>"+
							"<textarea style='display: none;'>搜索引擎</textarea><a title='采集'  class='Jcollect list-praise ' "+
							"onclick='collection("+video_id+","+id+","+userId+","+count+")'><i class='collect-text'>采集</i><em id='wys_collectcount"+id+"'>"+count+"</em></a>"+
							"<a title='赞'  class='Jpraise list-praise' onclick='addLikeCount("+id+","+like_count+")'"+
							"data-id='1784047'><img alt='haha' src='"+ postPath +"/images/iconzan.jpg' /> <em id='wys_likecount"+id+"'>"+like_count+"</em></a></div></div></div></li>";
							$("#wys_Notes").append(str);
							//$(str).appendTo("#wys_othersNote");
						}
				    
			},
		    error:function(){
		    	alert("系统错误");
		  }
  });
    
};

// 添加收藏别人笔记的事件(需要的属性:视频id , 笔记id,用户id ,收藏数)
function collection(video_id,note_id,user_id,count){
	//alert(video_id);
	//alert(note_id);
	//alert(user_id);
	$.ajax({
		url:"http://localhost:8090/pponline/Collection",
	    data:{"video_id":video_id,"note_id":note_id,"user_id":user_id},
	    type:"POST",
		dataType:"json",
		success:function(data){
			//alert(data)
			if(data>0){
				//收藏数加1
				//alert("元"+collectionnum);
				var newcollectnum = count + 1;
				//alert("newData:"+newcollectnum);
				$("#wys_collectcount"+note_id).html(newcollectnum);
				alert("收藏成功");
			}else{
				alert("网络异常,请稍后再试");
				
			}
		},
		error:function(){
			alert("请检查您的网络好吗?");
		}
	});
};   

//对别人的笔记点赞
function addLikeCount(id,like_count){
	var newCount = like_count+1;
	//alert(newCount);
	//alert(id);
	$.ajax({
		url:"http://localhost:8090/pponline/LikeCount",
	    data:{"id":id,"like_count":newCount},
	    type:"POST",
		dataType:"json",
		success:function(data){
			if(data>0){
				//点赞成功,原有的数据加1
				$("#wys_likecount"+id).html(newCount);
				alert("成功点赞");
			}else{
				alert("失败了,请检查你的网络");
			}
		},
		error:function(){
			alert("网络出错了");
		}
	});
	
};


//测试滑动开关选择器取值  显示 我的笔记 与全部笔记 来回切换
function choose1(userId,video_id){
		/*checkbox被选中时代表只看自己的笔记  */			
	if($("#default").is(":checked")) {
	   // alert("只看自己的笔记");//此时只显示id="wys_selfNote"的div块
	   /* $("#wys_othersNote").hide();
	    $("#wys_selfNote").show();
	    $("#wys_selfNote").empty();*/
	    $("#wys_Notes").empty();//清空
	    //获取项目绝对路径
	    var strFullPath = window.document.location.href;
	    var strPath = window.document.location.pathname;
	    var pos = strFullPath.indexOf(strPath);
	    var prePath = strFullPath.substring(0, pos);
	    var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
	   // alert (postPath);//这个 
	    //查看自己的本视频的笔记
	    $.ajax({
			   url:"http://localhost:8090/pponline/myNotes",
				type:"POST",
				data:{"userId":userId,"video_id":video_id},
				dataType:"json",
				success:function(data){
					for(var i=0;i<data.length;i++){
					    var context = data[i].context;         //笔记内容
					    var publish_time = data[i].publish_time;  //时间
					    var id = data[i].id					   //笔记id 	
					    var like_count = data[i].like_count;    //点赞人数
					    var uname = data[i].user.name;          //用户名
					    var image = data[i].user.image;         //用户头像
					    var uid = data[i].user.id;              //用户id
					    
					   // alert(ul);
					   // alert("image"+image);
					    	var str =  "<li class='post-row js-find-txt'  id='wys_remove"+id+"'>" +
					    			"<div class='notelist_headpic'>"+
						"<a href='#'> <img src='"+ postPath +"/img/"+image+"' width='40' height='40'></a></div>"+
						"<div class='notelist_content'><div class='u_name'><a href='#个人中心' target='_blank'>"+uname+"</a>"+
						"</div>	<div class='js-notelist-content notelist-content mynote' style='display: block;' id='wys_context"+id+"'>"+  
						""+context+ " <div class='notelist-content-more'><a href='#' class='js-toggle-content'>" +
						"[查看全文]</a></div>	</div><div class='clearfix'><a  class='sava_btn' onclick='wys_saveNote("+id+")'  style='display: none;' id='wys_sava"+id+"'>" +
						"保存</a></div><div class='notelist-bottom clearfix'><span title='1499148801' class='l timeago'>"+publish_time+"</span>" +
						"<div class='notelist-actions'><textarea style='display: none;' id='wys_textarea"+id+"' class='wys_context'>"+context+"</textarea>	<a title='编辑此条笔记'" +
						"  onclick='wys_editNote("+id+")' class='editnote list-praise' target='_blank' style='display: inline;'>" +
						" <img alt='haha' src='"+ postPath +"/images/edit.png' /><em>编辑</em></a><a title='删除此条笔记 ' onclick='wys_delNote("+id+")'" +
						"class='delnote list-praise' data-cid=''>" +   
						"<img alt='haha' src='"+ postPath +"/images/delete.png' /> <em >删除</em></a>" +
						"<a title='赞' href='javascript:;' class='Jpraise list-praise ' data-id='1787512'>" +
						"<img alt='haha' src='"+ postPath +"/images/iconzan.jpg' />  <em>"+like_count+"</em></a></div></div></div></li> ";
					     $("#wys_Notes").append(str);
					    //$(str).appendTo("#wys_selfNote");
					}
				},
				error:function(){
					alert("系统错误");
				}
		   });
	    
	   }else{
		      wys_bj(video_id,userId);  //显示他人的笔记
	     } 
	   };
	   
/**
 * 我的笔记编辑 函数
 */	  
function wys_editNote(id){
	//将
	$("#wys_textarea"+id).toggle();
	$("#wys_sava"+id).toggle();
	$("#wys_context"+id).toggle();
}	   
	
//保存修改后的笔记
function wys_saveNote(id){
	
	//alert("进入保存页面了");
	var recontext = $("#wys_textarea"+id ).val();
	//alert(recontext);
     
	$("#wys_textarea"+id).toggle();
	$("#wys_sava"+id).toggle();
	$("#wys_context"+id).toggle();
	//将修改后的数据替换掉原有数据
	$("#wys_context"+id).html(recontext);
	
	//获取输入框内容
	//alert("id:"+ id);
	 $.ajax({
		   url:"http://localhost:8090/pponline/Notes",
			type:"POST",
			data:{"id":id,"context":recontext},
			dataType:"json",
			success:function(data){
				
				//如果刷新成功,
				if(data>0){
					alert("保存成功");
				}else{
					alert("网络异常,请稍后再试");
				}
			},
			error:function(){
				alert("系统错误了,发生错误了");
			}
	 });
};

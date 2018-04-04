package cn.xdl.ovls.video.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.video.entity.Chapter;
import cn.xdl.ovls.video.entity.Video;
import cn.xdl.ovls.video.service.VideoService;

@RestController
public class VideoController {

	@Autowired
	private VideoService videoService;
	
	
	@RequestMapping(value="/video/course/{id}",method=RequestMethod.GET)
	public OvlsResult loadCourseVideos(@PathVariable("id")int courseId){
		OvlsResult result = new OvlsResult();
		try{
			List<Chapter> list = videoService.loadCourseVideos(courseId);
			result.setStatus(1);
			result.setMsg("查询成功");
			result.setData(list);
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("查询异常");
		}
		return result;
	}
	
	@RequestMapping(value="/video/{id}",method=RequestMethod.GET)
	public OvlsResult loadVideo(@PathVariable("id")int videoId){
		OvlsResult result = new OvlsResult();
		try{
			Video video = videoService.loadVideo(videoId);
			if(video==null){
				result.setStatus(2);
				result.setMsg("未找到数据");
			}else{
				result.setStatus(1);
				result.setMsg("查询成功");
				result.setData(video);
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("查询异常");
		}
		return result;
	}
	
}

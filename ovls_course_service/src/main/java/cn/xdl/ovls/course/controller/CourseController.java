package cn.xdl.ovls.course.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.course.entity.Course;
import cn.xdl.ovls.course.service.CourseService;

@RestController
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value="/course/free",method=RequestMethod.GET)
	public OvlsResult loadFree(
		@RequestParam(value="top",required=false,defaultValue="5") int top){
		OvlsResult result = new OvlsResult();
		try{
			List<Course> list = courseService.loadFreeCourse(top);
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
	
	@RequestMapping(value="/course/{id}",method=RequestMethod.GET)
	public OvlsResult loadCourse(@PathVariable("id")int id){
		OvlsResult result = new OvlsResult();
		try{
			Course course = courseService.loadCourse(id);
			if(course==null){
				result.setStatus(2);
				result.setMsg("未找到记录");
			}else{
				result.setStatus(1);
				result.setMsg("查询成功");
				result.setData(course);
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("查询异常");
		}
		return result;
	}
	
}

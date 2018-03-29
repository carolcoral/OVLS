package cn.xdl.ovls.course.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.course.entity.Subject;
import cn.xdl.ovls.course.service.SubjectService;

@RestController
public class SubjectController {

	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping(value="/subject",method=RequestMethod.GET)
	public OvlsResult loadSubjects(){
		OvlsResult result = new OvlsResult();
		try{
			List<Subject> list = subjectService.loadSubjects();
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
	
}

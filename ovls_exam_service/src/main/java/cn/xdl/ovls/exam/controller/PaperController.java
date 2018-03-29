package cn.xdl.ovls.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.exam.entity.Paper;
import cn.xdl.ovls.exam.service.PaperService;

@RestController
public class PaperController {

	@Autowired
	private PaperService paperService;
	
	@RequestMapping(value="/paper/subject/{id}",method=RequestMethod.GET)
	public OvlsResult loadSubjectPapers(@PathVariable("id")int subjectId){
		
		OvlsResult result = new OvlsResult();
		try{
			List<Paper> list = paperService.loadSubjectPapers(subjectId);
			if(list.isEmpty()){
				result.setStatus(2);
				result.setMsg("未找到记录");
			}else{
				result.setStatus(1);
				result.setMsg("查询成功");
				result.setData(list);
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("查询异常");
		}
		return result;
	}
	
}

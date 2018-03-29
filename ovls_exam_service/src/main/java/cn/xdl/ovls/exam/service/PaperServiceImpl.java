package cn.xdl.ovls.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xdl.ovls.exam.dao.PaperMapper;
import cn.xdl.ovls.exam.entity.Paper;

@Service
public class PaperServiceImpl implements PaperService{

	@Autowired
	private PaperMapper paperDao;
	
	public List<Paper> loadSubjectPapers(int subjectId) {
		List<Paper> list = paperDao.selectBySubjectId(subjectId);
		return list;
	}
	
}

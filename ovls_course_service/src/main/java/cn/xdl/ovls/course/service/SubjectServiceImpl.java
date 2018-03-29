package cn.xdl.ovls.course.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xdl.ovls.course.dao.SubjectMapper;
import cn.xdl.ovls.course.entity.Subject;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	private SubjectMapper subjectDao;
	
	public List<Subject> loadSubjects() {
		List<Subject> list = subjectDao.selectAll();
		return list;
	}

}

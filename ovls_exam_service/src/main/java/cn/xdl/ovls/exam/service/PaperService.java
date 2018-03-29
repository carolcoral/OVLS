package cn.xdl.ovls.exam.service;

import java.util.List;

import cn.xdl.ovls.exam.entity.Paper;

public interface PaperService {
	
	public List<Paper> loadSubjectPapers(int subjectId);
	
}

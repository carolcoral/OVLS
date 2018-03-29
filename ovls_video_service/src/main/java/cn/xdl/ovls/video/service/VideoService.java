package cn.xdl.ovls.video.service;

import java.util.List;

import cn.xdl.ovls.video.entity.Chapter;

public interface VideoService {
	
	public List<Chapter> loadCourseVideos(int courseId);
	
}

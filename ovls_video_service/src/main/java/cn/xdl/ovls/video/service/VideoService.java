package cn.xdl.ovls.video.service;

import java.util.List;

import cn.xdl.ovls.video.entity.Chapter;
import cn.xdl.ovls.video.entity.Video;

public interface VideoService {
	
	public List<Chapter> loadCourseVideos(int courseId);
	
	public Video loadVideo(int videoId);
	
}

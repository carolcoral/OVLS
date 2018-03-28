package cn.xdl.ovls.course.service;

import java.util.List;

import cn.xdl.ovls.course.entity.Course;

public interface CourseService {
	
	public List<Course> loadFreeCourse(int top); 
	
	public Course loadCourse(int id);
	
}

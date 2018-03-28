package cn.xdl.ovls.course.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cn.xdl.ovls.course.dao.CourseMapper;
import cn.xdl.ovls.course.entity.Course;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	private CourseMapper courseDao;
	
	public List<Course> loadFreeCourse(int top) {
		PageHelper.startPage(1, top);
		List<Course> list = courseDao.selectByFreePrice();
		return list;
	}

	public Course loadCourse(int id) {
		Course course = courseDao.selectByPrimaryKey(id);
		return course;
	}

}

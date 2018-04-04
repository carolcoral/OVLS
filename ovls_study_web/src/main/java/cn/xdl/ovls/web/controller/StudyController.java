package cn.xdl.ovls.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudyController {

	@RequestMapping("/study/test.html")
	public String toTest() {
		return "test";
	}

	@RequestMapping("/study/index.html")
	public String toIndex() {
		return "index";// index.jsp-->viewresolver
	}

	@RequestMapping("/study/course.html")
	public String toCourse() {
		return "course";// course.jsp-->viewresolver
	}
	
	@RequestMapping("/study/user_center.html")
	public String toUserCenter() {
		return "user_center";// course.jsp-->viewresolver
	}

}

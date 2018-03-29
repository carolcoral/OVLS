package cn.xdl.ovls.web.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExamController {

	@RequestMapping("/exam/home.html")
	public String toHome(){
		return "home";
	}
	
}

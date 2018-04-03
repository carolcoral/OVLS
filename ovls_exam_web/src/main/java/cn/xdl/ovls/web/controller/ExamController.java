package cn.xdl.ovls.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExamController {

	@RequestMapping("/exam/analysis.html")
	public String toAnalysis() {
		return "analysis";
	}

	@RequestMapping("/exam/exam-history.html")
	public String toExamHistory() {
		return "exam-history";
	}

	@RequestMapping("/exam/home.html")
	public String toHome() {
		return "home";
	}

	@RequestMapping("/exam/paper-exam-finish-report.html")
	public String toPaperExamFinishReport() {
		return "paper-exam-finish-report";
	}

	@RequestMapping("/exam/paper-exam-finished.html")
	public String toPaperExamFinished() {
		return "paper-exam-finished";
	}

	@RequestMapping("/exam/practice-improve.html")
	public String toPracticeImprove() {
		return "practice-improve";
	}

	@RequestMapping("/exam/practice-testing.html")
	public String toPracticeTesting() {
		return "practice-testing";
	}

	@RequestMapping("/exam/usercenter.html")
	public String toUserCenter() {
		return "usercenter";
	}

}

package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.favorites;
import kr.smhrd.entity.lectures;
import kr.smhrd.mapper.LectureMapper;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LecturesController {
	
	@Autowired
	private LectureMapper lectureMapper;
	
	@RequestMapping("/Python_1.do")
	public String Python_1(Model model) {
		List<lectures>list = lectureMapper.getList();
		model.addAttribute("list",list);
		
		return "./Lang/Python_1";
	}
	
	@RequestMapping("/Java_1.do")
	public String Java_1(Model model) {
		List<lectures>list = lectureMapper.getList_2();
		model.addAttribute("list",list);
		return "./Lang/Java_1";
	}
	
	@RequestMapping("/JS_1.do")
	public String JS_1(Model model) {
		List<lectures>list = lectureMapper.getList_3();
		model.addAttribute("list",list);
		return "./Lang/JS_1";
	}
	
	@RequestMapping("/ai_1.do")
	public String ai_1(Model model) {
		List<lectures>list = lectureMapper.getList_4();
		model.addAttribute("list",list);
		return "./Lang/ai_1";
	}
	
	@RequestMapping("/ai_2.do")
	public String ai_2(Model model) {
		List<lectures>list = lectureMapper.getList_5();
		model.addAttribute("list",list);
		return "./Lang/ai_2";
	}
	
	
	@RequestMapping("/MyPage.do")
	public String MyPage_select(Model model) {
		List<lectures>list = lectureMapper.MyPage_select();
		model.addAttribute("list",list);
		System.out.println(list.size());
		return "MyPage";
	}
	
	

	
	
	
}

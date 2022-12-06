package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class YoutubeController {

	@RequestMapping("/index.do")
	public String index(Model model) {
		return "index";
	}
	
	
	
	@RequestMapping("/First.do")
	public String First(Model model) {
		
		return "First";
	}
	
	@RequestMapping("/index_1")
	public String index_1(Model model) {
		
		return "index_1";
	}
	@RequestMapping("/index_2")
	public String index_2(Model model) {
		
		return "index_2";
	}
	
	
	

	
	
	
}

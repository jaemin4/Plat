package kr.smhrd.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.keywords;
import kr.smhrd.mapper.KeywordMapper;
import kr.smhrd.mapper.LectureMapper;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class KeywordController {
	
	@Autowired
	private KeywordMapper keywordmapper;

	@RequestMapping("/VideoPage.do")
	public String SelectKeyword(Model model,@RequestParam Map<String, Object> param) {
		
     	String lec_id = (String) param.get("this_id");
     	System.out.println(lec_id);
     	List<keywords> list = keywordmapper.SelectKeyword(lec_id );
     	System.out.println(list);
		model.addAttribute("list", list);
		
		
		return "VideoPage";
	}
	
	
	
	
}

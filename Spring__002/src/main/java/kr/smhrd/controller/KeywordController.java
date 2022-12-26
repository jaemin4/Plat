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
import kr.smhrd.entity.lectures;
import kr.smhrd.mapper.KeywordMapper;
import kr.smhrd.mapper.LectureMapper;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class KeywordController {

	@Autowired
	private KeywordMapper keywordmapper;
	
	@RequestMapping("/VideoPage.do")
	public String SelectKeyword(Model model, String lec_id) {

		keywords vo = new keywords();
		vo.setLec_id(lec_id);
	
		List<keywords> list = keywordmapper.SelectKeyword(vo);
		model.addAttribute("list", list);
		
		
		List<lectures>lec_lang_list = keywordmapper.SelectLecLang(vo);
		model.addAttribute("lec_lang_list", lec_lang_list);
		
		return "VideoPage";
	}


	

}

package kr.smhrd.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.smhrd.entity.favorites;
import kr.smhrd.entity.lectures;
import kr.smhrd.mapper.FavoritesMapper;
import kr.smhrd.mapper.LectureMapper;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class FavoritesController {
	
	@Autowired
	private FavoritesMapper favoritesMapper;
	
	
	@RequestMapping("/jjim.do")
		public @ResponseBody String f_select_lec(@RequestParam Map<String, Object> param,favorites vo){
			
			//HttpServletRequest request
	     	//String lec_id =request.getParameter("this_id");
	     	String lec_id = (String) param.get("this_id");
	     	System.out.println(lec_id);
	     	
			List<favorites>lecid = favoritesMapper.f_select_lec(lec_id);
			System.out.println(lecid.size());
			if(lecid.size() == 0) {
				System.out.println("찜하기");
				vo.setLec_id(lec_id);
				favoritesMapper.f_insert(vo);
			}
			else 
			{
				System.out.println("이찜");
				vo.setLec_id(lec_id);
				favoritesMapper.f_delete(vo);
			}
	
			return "Python_1.do";
			
	}
	

	
		
	

	
	

	
	
	
}

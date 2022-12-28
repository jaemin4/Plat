package kr.smhrd.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		public @ResponseBody String f_select_lec(Model model,@RequestParam Map<String, Object> param,favorites vo,HttpServletRequest request){
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("m_id");
			System.out.println(id+"여기는 컨트롤로에서 session을 받아옵니다");
		
	     	String lec_id = (String) param.get("this_id");
	     	System.out.println(lec_id+"값을 잘 받아오니?");
	     	
	     	vo.setLec_id(lec_id);
	     	vo.setMem_id(id);
	     	
			List<favorites> lecid= favoritesMapper.f_select_lec(vo);
			System.out.println(lecid.size());
			
		
			if(lecid.size() == 0) {
				System.out.println("찜하기");
				favoritesMapper.f_insert(vo);
				model.addAttribute("lecid",lecid);
				System.out.println(lecid+"favoritecontroller+lecid");
			}
			else 
			{
				System.out.println("이찜");
				favoritesMapper.f_delete(vo);
				model.addAttribute("lecid",lecid);
			}
			return "VideoPage.do";
	}
	
	@RequestMapping("/MyPage.do")
		public String favorite_v(Model model,HttpSession session) {
		String mem_id = (String) session.getAttribute("m_id");
		System.out.println(mem_id+"session받아왔니?");
		
		List<lectures> list = favoritesMapper.MyPage_select(mem_id);
		System.out.println(list.size()+"리시트의 사이즈");
		
		if(mem_id != null) {
			model.addAttribute("list",list);
			model.addAttribute("memeber_id",mem_id);
			return "MyPage";
		}
		else {
			return "redirect:/Python_1.do";
		}
		
	
		
		
	}
	
	
	



	
		
	

	
	

	
	
	
}

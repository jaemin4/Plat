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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import kr.smhrd.entity.members;
import kr.smhrd.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class MemberController {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@RequestMapping(value = "/Join_login.do", method = RequestMethod.GET)
	public String Join_login() {


		return "Join_login";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String register(members vo,Model model) {

		memberMapper.register(vo); 
		
	
		return "redirect:./Python_1.do";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(members vo,HttpSession session) {

		members m = memberMapper.login(vo);
		if(m != null) {
			session.setAttribute("m_id", m.getMem_id());
			System.out.println(m.getMem_id()+"이것은 mem_name입니다");
			return "redirect:./Python_1.do";
		}
	
		else {
			System.out.println();
			return "redirect:/Join_login.do";
		}
		
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {

		String m_id = (String)session.getAttribute("m_id");
		if(m_id != null) {
			session.invalidate();
			return "redirect:./Python_1.do";
		}
		else {
			return  "redirect:/Join_login.do";
		}
		
		
	   
		  

	       
		
	}
	

	
	
	

	

	
	

	
	

	
	
	
}

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
	
		return "redirect:/index.do";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(members vo,HttpSession session) {

		members m = memberMapper.login(vo);
		if(m != null) {
			// 회원인증에 성공~
			session.setAttribute("m_name", m.getMem_name()); //${m.memName}
			System.out.println(m.getMem_name());
			return "redirect:/index.do";
		}
	

		else {
			System.out.println();
			return "redirect:/Join_login.do";
		}
		
	
		
	}
	
	

	

	
	

	
	

	
	
	
}

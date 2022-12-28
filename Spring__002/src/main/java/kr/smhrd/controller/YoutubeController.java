package kr.smhrd.controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.client.RestTemplate;




@Controller
public class YoutubeController {

	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}

	@RequestMapping("/index2.do")
	public String index2() {
		return "index2";
	}

	@RequestMapping("/LandingPage.do")
	public String LandingPage() {
		return "LandingPage";
	}
	
	@RequestMapping(value = "/searchcon.do")
	public String TempPage(HttpServletRequest httpServletRequest,RestTemplate restTemplate) {
		String keyword = httpServletRequest.getParameter("keyword");
		System.out.println(keyword);
		
		/*
		 * String flaskServerUrl = "http://127.0.0.1:5000/endpoint";
		 * System.out.println(flaskServerUrl+"url");
		 * 
		 * 
		 * ResponseEntity<String> response = restTemplate.postForEntity(flaskServerUrl,
		 * keyword, String.class);
		 * 
		 * if (response.getStatusCode() == HttpStatus.OK) { // The request was
		 * successful System.out.println("Data sent successfully"); } else { // Handle
		 * the error System.out.println("An error occurred: "+response.getStatusCode());
		 * }
		 */
		
		
		return "Temp2";
	}	  
		
	
	

	
	
	
}

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
public class PythonController {

   @RequestMapping("/Python_1.do")
   public String Python_1(Model model) {
      return "./Python/Python_1";
   }
   
   @RequestMapping("/Python_2.do")
   public String Python_2(Model model) {
      return "./Python/Python_2";
   }
   
   @RequestMapping("/Python_3.do")
   public String Python_3(Model model) {
      return "./Python/Python_3";
   }
   
   

   
   

   
   
   
}
package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.MemberVO;
import com.board.service.MemberService;


@Controller
@RequestMapping("/board/*")
public class MemberController {

private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
 
 @Inject
 MemberService service;
	
	  // 회원가입 폼으로 이동 get
	  
	  @RequestMapping(value = "/register", method = RequestMethod.GET) public void
	  getRegister() throws Exception { logger.info("get register"); }
	  
	  // 회원가입 버튼 post
	  
	  @RequestMapping(value = "/register", method = RequestMethod.POST) public String
	  postRegister(MemberVO vo) throws Exception { logger.info("post resister");
		service.register(vo);
		return "redirect:/";
	  }
	  
	// 로그인
	  @RequestMapping(value = "/login", method = RequestMethod.POST)
	  public String login(MemberVO vo, HttpServletRequest req, Model model) throws Exception {
	   logger.info("post login");
	   
	   HttpSession session = req.getSession();
	   MemberVO login = service.login(vo);
	   if(login == null) {
	    session.setAttribute("member", null);
	    System.out.println(login+"2");
	   } else {
	    session.setAttribute("member", login);
	    System.out.println(login+"3");
	   }
	   System.out.println("session : " + session.getAttribute("member"));
	   System.out.println("session2 : " + session.getId());
	   
	   model.addAttribute("member2", login);
	   System.out.println("member2 : "+ model);
		return "redirect:/";
	  }
	  
	// 로그아웃
	  @RequestMapping(value = "/logout", method = RequestMethod.GET)
	  public String logout(HttpSession session) throws Exception {
	   logger.info("get logout");
	   
	   session.invalidate();
	     
	   return "redirect:/";
	  }
	   
}
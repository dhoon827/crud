package com.board.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.AuthorityVO;
import com.board.domain.BoardVO;
import com.board.domain.MemberVO;
import com.board.service.MemberService;

@Controller
@RequestMapping("/board/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	@Autowired
	BCryptPasswordEncoder passEncoder;

	// 회원가입 폼으로 이동 get

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	// 회원가입 버튼 post

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post resister");

		String inputPass = vo.getMpassword();
		String pass = passEncoder.encode(inputPass);
		vo.setMpassword(pass);

		service.register(vo);

		return "redirect:/";
	}

	// 아이디 중복확인(ajax)
	// @ResponseBody : return을 text로 줄수있는 어노테이션 (원래는 jsp(주소값) 로 감)
	/*
	 * @RequestMapping(value="/idoverlap") public @ResponseBody String
	 * idOverLap(@RequestParam("mid") String mid) throws Exception { String
	 * resultMsg = service.idOverlap(mid); return resultMsg; }
	 */

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req) throws Exception {
		logger.info("post idCheck");

		String mid = req.getParameter("mid");
		MemberVO idCheck = service.idCheck(mid);

		int result = 0;

		if (idCheck != null) {
			result = 1;
		}

		return result;
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();
		MemberVO login = service.login(vo);

		boolean passMatch = passEncoder.matches(vo.getMpassword(), login.getMpassword());

		if (login != null && passMatch) {
			session.setAttribute("member", login);

		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}
		/*
		 * if (login == null) { session.setAttribute("member", null);
		 * rttr.addFlashAttribute("msg", false); } else { session.setAttribute("member",
		 * login); }
		 */
		return "redirect:/";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}
	
	//등급 업 신청 페이지 이동
	@RequestMapping(value = "/authority", method = RequestMethod.GET)
	public void getAuthority() throws Exception {
	}
	
	//등급 업 신청
	@RequestMapping(value = "/authority", method = RequestMethod.POST)
	public String postAuthority(AuthorityVO vo) throws Exception {
		
		service.authority(vo);
		return "redirect:/";
	}
	//등급 허락 페이지 리스트 이동
	@RequestMapping(value = "/permissionlist", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List list = null;
		list = service.list();
		model.addAttribute("list", list);
	}
	/*
	 * //등급 상승 신청 중복조회
	 * 
	 * @RequestMapping()
	 */
	
	// 등급 허락 페이지 
	@RequestMapping(value = "/permission", method = RequestMethod.GET)
	public void getModify(@RequestParam("anumber") int anumber, Model model) throws Exception {

		AuthorityVO vo = service.view(anumber);

		model.addAttribute("list", vo);
	}
	
	//등급 승인
	@RequestMapping(value="/accept", method = RequestMethod.POST)
	public String accept(AuthorityVO vo) throws Exception {
		
		vo.setAstate("완료");
		 service.accept(vo);
		 if(vo.getAupdate().equals("accept")) {
			 MemberVO mVO = new MemberVO();
			 service.memUpdate(vo); 
			 }
		return "redirect:/board/permissionlist";
	}
	
}
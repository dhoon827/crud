package com.board.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.board.domain.BoardVO;
import com.board.domain.MemberVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service;

	// 게시물 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List list = null;
		list = service.list();
		model.addAttribute("list", list);
	}

//게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWirte(HttpSession session, Model model) throws Exception {
		Object loginInfo = session.getAttribute("member");
		if(loginInfo == null) {
		 model.addAttribute("msg", false);
		}
	}

	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(BoardVO vo, MultipartHttpServletRequest mpRequest, HttpSession session) throws Exception {
		Object chk = session.getAttribute("member");
		if(chk != null) {
			service.write(vo, mpRequest);
		}else {
			service.openwrite(vo, mpRequest);
		}
		return "redirect:/board/list";
	}

	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String getView(@RequestParam("bnumber") int bnumber, Model model, HttpSession session) throws Exception {
		Object chk = session.getAttribute("member");
		BoardVO vo = service.view(bnumber);
		if(chk == null) {
			
			if(vo.getAsecret() == 1) {
				model.addAttribute("view", vo);
				List<Map<String, Object>> fileList = service.selectFileList(vo.getBnumber());
				model.addAttribute("file", fileList);
				return "board/openpassword";
				}
				model.addAttribute("view", vo);
				List<Map<String, Object>> fileList = service.selectFileList(vo.getBnumber());
				model.addAttribute("file", fileList);
				return "board/view";
		}
		model.addAttribute("view", vo);
		List<Map<String, Object>> fileList = service.selectFileList(vo.getBnumber());
		model.addAttribute("file", fileList);
		return "board/view";
	}
	
	//비밀번호 입력 페이지 이동
	@RequestMapping(value="/openpassword", method=RequestMethod.GET)
	public void openPass(@RequestParam("bnumber") int bnumber, @RequestParam("bdnumber") int bdnumber,Model model,HttpServletRequest request)throws Exception{
			model.addAttribute("bnumber"+bnumber);
			model.addAttribute("bdnumber"+bdnumber);
	}
	
	//게시물 조회(비밀번호 입력)
	@RequestMapping(value = {"/pass","/bdpass"}, method = RequestMethod.GET)
	public String passView(@RequestParam("bnumber") int bnumber,@RequestParam("bdnumber") int bdnumber,HttpServletRequest request, Model model, BoardVO Bvo) throws Exception {
		if(request.getServletPath().equals("/pass")) {
		System.out.println("Bvo : "+Bvo);
		BoardVO vo = service.view(bnumber);
		if(vo.getBpassword().equals(Bvo.getBpassword())){
			model.addAttribute("view", vo);
			if(vo.getAsecret() != 1) {
				System.out.println("비밀글이 아니면");
				return "redirect:/board/modify?bnumber=" + vo.getBnumber();
			}else if(vo.getAsecret() == 1) {
				System.out.println("비밀글");
				System.out.println("비밀번호 맞음");
				return "board/view";
			}
		}else {
			System.out.println("비밀번호 틀림");
			model.addAttribute("view", vo);
			model.addAttribute("msg","비밀번호가 틀렸습니다");
			return "board/openpassword";
		}
		System.out.println("비밀번호 맞음");
		return "board/view";
		}
		bnumber = bdnumber;
		BoardVO vo = service.view(bnumber);
		if(vo.getBpassword().equals(Bvo.getBpassword())){
			return "redirect:/board/delete?bnumber="+vo.getBnumber();
		}
		System.out.println("비밀번호 틀림");
		model.addAttribute("view", vo);
		model.addAttribute("msg","비밀번호가 틀렸습니다");
		return "board/openpassword";
	}
	
	
	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bnumber") int bnumber, Model model) throws Exception {

		BoardVO vo = service.view(bnumber);

		model.addAttribute("view", vo);
		
		List<Map<String, Object>> fileList = service.selectFileList(vo.getBnumber());
		model.addAttribute("file", fileList);
	}

	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardVO vo,  @RequestParam(value="fileNoDel[]") String[] files,
			 @RequestParam(value="fileNameDel[]") String[] fileNames,
			 MultipartHttpServletRequest mpRequest) throws Exception {

		service.modify(vo, files, fileNames, mpRequest);

		return "redirect:/board/view?bnumber=" + vo.getBnumber();
		
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("bnumber") int bnumber) throws Exception {

		service.delete(bnumber);

		return "redirect:/board/list";
	}
	
	//첨부파일 다운
	@RequestMapping(value="/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\mp\\file\\"+storedFileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
	
}
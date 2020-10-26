package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
import com.board.domain.AuthorityVO;
import com.board.domain.BoardVO;
import com.board.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
			return dao.login(vo);
		}
		
		/*
		 * //아이디 중복확인(ajax) public String idOverlap(String mid) throws Exception{
		 *  String checkResult = dao.idOverlap(mid); 
		 *  String resultMsg = null; 
		 *  if(checkResult == null) 
		 *  	resultMsg = "OK"; 
		 *  else resultMsg = "NO"; 
		 *  return resultMsg; }
		 */
	
	// 아이디 중복 체크
	@Override
	public MemberVO idCheck(String mid) throws Exception {
		return dao.idCheck(mid);
	}
	
	//등급 업 신청
	@Override
	public void authority(AuthorityVO vo) throws Exception {
		dao.authority(vo);
	}
	
	//등급 허락 페이지 이동
	@Override
	public List<AuthorityVO> list() throws Exception {

		return dao.list();
	}
	
	//등급 승인
	@Override
	public void accept(AuthorityVO vo) throws Exception{
		dao.accept(vo);
	}
	
	// 등급 허락 페이지 
	@Override
	public AuthorityVO view(int anumber) throws Exception{
		return dao.view(anumber);
	}
	
	//아이디 등급변경
//	@Override
//	public void memUpdate(MemberVO mVO) throws Exception{
//		System.out.println("나오나? :"+mVO);
//		dao.memUpdate(mVO);
//	}
	@Override
	public void memUpdate(AuthorityVO vo) throws Exception{
		dao.memUpdate(vo);
	}
}

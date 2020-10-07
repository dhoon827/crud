package com.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
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
}

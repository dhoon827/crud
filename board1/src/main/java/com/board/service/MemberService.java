package com.board.service;

import com.board.domain.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;
	
	
	public MemberVO login(MemberVO vo) throws Exception;

	/* public String idOverlap(String mid) throws Exception; */
	
	// 아이디 중복 체크
	public MemberVO idCheck(String mid) throws Exception;

}

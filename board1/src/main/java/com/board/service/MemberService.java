package com.board.service;

import com.board.domain.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;
	
	//회원 가입
	public MemberVO login(MemberVO vo) throws Exception;

}

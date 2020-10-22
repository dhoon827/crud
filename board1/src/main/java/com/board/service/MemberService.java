package com.board.service;

import java.util.List;

import com.board.domain.AuthorityVO;
import com.board.domain.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;
	
	
	public MemberVO login(MemberVO vo) throws Exception;

	/* public String idOverlap(String mid) throws Exception; */
	
	// 아이디 중복 체크
	public MemberVO idCheck(String mid) throws Exception;

	//등급 업 신청
	public void authority(AuthorityVO vo) throws Exception;

	//등급 허락 페이지 이동
	public List<AuthorityVO> list() throws Exception;

	//등급 승인
	public void accept(int anumber) throws Exception;

	// 등급 허락 페이지 
	public AuthorityVO view(int anumber) throws Exception;

	//등급 반려
	public void reject(int anumber) throws Exception;

}

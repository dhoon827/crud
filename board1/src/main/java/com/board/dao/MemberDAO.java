package com.board.dao;

import com.board.domain.MemberVO;

public interface MemberDAO {
		// 회원가입
		public void register(MemberVO vo) throws Exception;
		
		// 로그인
		public MemberVO login(MemberVO vo) throws Exception;
		
		/* public String idOverlap(String mid) throws Exception; */
		
		// 아이디 중복체크
		public MemberVO idCheck(String mid) throws Exception;
}

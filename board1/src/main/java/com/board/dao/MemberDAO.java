package com.board.dao;

import java.util.List;

import com.board.domain.AuthorityVO;
import com.board.domain.MemberVO;

public interface MemberDAO {
		// 회원가입
		public void register(MemberVO vo) throws Exception;
		
		// 로그인
		public MemberVO login(MemberVO vo) throws Exception;
		
		/* public String idOverlap(String mid) throws Exception; */
		
		// 아이디 중복체크
		public MemberVO idCheck(String mid) throws Exception;
		
		//등급 업 신청
		public void authority(AuthorityVO vo) throws Exception;

		//등급 허락 페이지 이동
		public List<AuthorityVO> list() throws Exception;
		
		//등급 승인
		public void accept(int anumber) throws Exception;
		
		//등급 허락 페이지 정보조회
		public AuthorityVO view(int anumber) throws Exception;
}

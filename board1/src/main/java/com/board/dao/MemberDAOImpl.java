package com.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject SqlSession sql;

	private static String namespace="com.board.mappers.member";
	
	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert(namespace+".register", vo);
	}
	
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		/* return sql.selectOne(namespace+".login", vo); */
		return sql.selectOne(namespace+".loginBcrypt", vo);
	}
	
	/*
	 * //아이디 중복확인(ajax) public String idOverlap(String mid) throws Exception{
	 *  return sql.selectOne(namespace+"idOverlap", mid); }
	 */
	// 아이디 중복 체크
	@Override
	public MemberVO idCheck(String mid) throws Exception {
		return sql.selectOne(namespace+".idCheck", mid);
	}
}

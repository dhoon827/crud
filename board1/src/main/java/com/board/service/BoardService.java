package com.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.board.domain.BoardVO;

public interface BoardService {

	// 게시물 목록
	public List<BoardVO> list() throws Exception;

	// 게시물 작성
	public void write(BoardVO vo, MultipartHttpServletRequest mpRequest) throws Exception;

	// 게시물 조회
	public BoardVO view(int bnumber) throws Exception;

	// 게시물 수정
	public void modify(BoardVO vo, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;

	// 게시물 삭제
	public void delete(int bnumber) throws Exception;

	// 첨부파일 조회
	public List<Map<String, Object>> selectFileList(int bnumber) throws Exception;
	
	// 첨부파일 다운
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

	// 게시물 총 갯수
	public int count() throws Exception;

	// 게시물 목록 + 페이징
	public List listPage(int displayPost, int postNum) throws Exception;
}

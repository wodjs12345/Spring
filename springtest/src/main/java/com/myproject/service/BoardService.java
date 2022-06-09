package com.myproject.service;

import java.util.List;

import com.myproject.domain.BoardVO;
import com.myproject.domain.Criteria;

public interface BoardService {

	//게시판 생성
	public void create(BoardVO vo) throws Exception;

	//게시판 전체 리스트(사용x)
    public List<BoardVO> listAll() throws Exception;

    //게시판 리스트(페이징 적용)
    public List<BoardVO> PaginglistBoard(Criteria cri) throws Exception;

    //게시글 상세보기
    public BoardVO read(Integer b_no) throws Exception;

    //게시글 삭제
    public void delete(Integer b_no) throws Exception;

    //게시글 수정
    public void update(BoardVO vo) throws Exception;

    //게시글 총 갯수
    public int count(Criteria cri) throws Exception;

    //조회수 증가
    public void reviewup(Integer b_no) throws Exception;

}
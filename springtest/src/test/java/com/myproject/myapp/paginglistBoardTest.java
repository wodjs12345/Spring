package com.myproject.myapp;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.myproject.DAO.BoardDAO;
import com.myproject.domain.Criteria;


public class paginglistBoardTest {
	
	@Inject
    private BoardDAO dao;
	
	@Test
	public void paginglistBoardTest() throws Exception {
		Criteria cri = new Criteria();
		List list = dao.PaginglistBoard(cri);
		//list.forEach(board -> log.info(""+board));
	}
	
}

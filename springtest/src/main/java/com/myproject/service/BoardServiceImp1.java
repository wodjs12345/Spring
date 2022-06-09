package com.myproject.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myproject.DAO.BoardDAO;
import com.myproject.domain.BoardVO;
import com.myproject.domain.Criteria;

@Service
public class BoardServiceImp1 implements BoardService{

	@Inject
    private BoardDAO dao;

		@Override
	    public void create(BoardVO vo) throws Exception {
	        dao.create(vo);
	    }

	    @Override
	    public List<BoardVO> listAll() throws Exception {   
	        return dao.listAll();
	    }

	    @Override
		public List<BoardVO> PaginglistBoard(Criteria cri) throws Exception {
			return dao.PaginglistBoard(cri);
		}

	    @Override
	    public BoardVO read(Integer b_no) throws Exception {    
	        return dao.read(b_no);
	    }

	    @Override
	    public void delete(Integer b_no) throws Exception {
	        dao.delete(b_no);
	    }

	    @Override
	    public void update(BoardVO vo) throws Exception {    
	        dao.update(vo);
	    }

		@Override
		public int count(Criteria cri) throws Exception {
			return dao.count(cri);
		}

		@Override
		public void reviewup(Integer b_no) throws Exception {
			dao.reviewup(b_no);
		}


	}
package com.myproject.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myproject.DAO.MemberDAO;
import com.myproject.domain.MemberVO;

@Service
public class MemberServiceImp1 implements MemberService {

	@Inject
	private MemberDAO dao;

	@Override
	public void insertMember (MemberVO vo) throws Exception{
		dao.insertMember(vo);
	}

	@Override
	public MemberVO selectMember (String user_id) throws Exception{
		return dao.selectMember(user_id);
	}

	@Override
	public MemberVO selectloginMember(MemberVO vo) throws Exception {		
		return dao.selectloginMember(vo);
	}

	@Override
	public List<MemberVO> selectMemberAll() throws Exception{
		return dao.selectMemberAll();	
	}



} 
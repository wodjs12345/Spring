package com.myproject.DAO;

import java.util.List;

import com.myproject.domain.MemberVO;



public interface MemberDAO {

	//회원가입 정보 저장
	public void insertMember(MemberVO vo);

	//아이디 값으로 로그인 (사용 x)
	public MemberVO selectMember (String user_id) throws Exception;

	//아이디, 비밀번호 값으로 로그인
	public MemberVO selectloginMember (MemberVO vo) throws Exception;

	//모든 회원 검색(사용x)
	public List<MemberVO> selectMemberAll() throws Exception;	


}
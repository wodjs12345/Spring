package com.myproject.DAO;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myproject.domain.MemberVO;


@Repository
public class MemberDAOImp implements MemberDAO{

	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;


    private static final String namespace = "com.myproject.myapp.memberMapper";
                                            //memberMapper.xml의 namespace값

    @Override
    public void insertMember(MemberVO vo) {
        sqlSession.insert(namespace+".insertMember", vo);        
    }

    @Override
	public MemberVO selectMember(String user_id) throws Exception {
		return (MemberVO)sqlSession.selectOne(namespace+".selectMember", user_id);

	}

    @Override
	public MemberVO selectloginMember(MemberVO vo) throws Exception {
		return (MemberVO)sqlSession.selectOne(namespace+".selectloginMember", vo);

	}

	@Override
	public List<MemberVO> selectMemberAll() throws Exception {
		return sqlSession.selectList(namespace+".selectMemberAll");

	}


}



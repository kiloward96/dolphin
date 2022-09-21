package com.gurugan.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.gurugan.infra.modules.member.MemberMapper";

	public List<Member> selectList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insert(MemberAddress dto) {
		int result = sqlSession.insert(namespace + ".insertAddress", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Member dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		System.out.println("dao result: " + result);
		return result;
	}
}

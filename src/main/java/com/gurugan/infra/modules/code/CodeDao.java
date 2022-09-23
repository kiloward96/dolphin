package com.gurugan.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.gurugan.infra.modules.code.CodeMapper";

	public List<Code> selectList(CodeVo vo) {
		List<Code> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public List<Code> groupList() {
		List<Code> grouplist = sqlSession.selectList(namespace + ".groupList", "");
		return grouplist;
	}
	
	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int selectOneIdCheck(Code dto) {
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
	
}

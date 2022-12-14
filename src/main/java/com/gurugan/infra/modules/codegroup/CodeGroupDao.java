package com.gurugan.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOra;

	private static String namespace = "com.gurugan.infra.modules.codegroup.CodeGroupMapper";

	public List<CodeGroup> selectList(CodeGroupVo vo) {
		List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
//		List<CodeGroup> list = sqlSession.selectOne("com.gurugan.infra.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list;
	}
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	public CodeGroup selectOne(CodeGroupVo vo) {
//		return sqlSession.selectList(namespace + ".selectList", vo);
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(CodeGroup dto) {
		int result = sqlSession.update(namespace + ".update", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(CodeGroupVo vo) {
		System.out.println("vo wtf: " + vo.getShValue());
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
//	for cache
	public List<CodeGroup> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
	
	public List<CodeGroup> selectListOra(CodeGroup dto) {
		return sqlSessionOra.selectList(namespace + ".selectListOra", dto);
	}
}

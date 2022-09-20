package com.gurugan.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gurugan.infra.modules.codegroup.CodeGroupVo;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.gurugan.infra.modules.code.CodeMapper";

	public List<Code> selectList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public List<Code> groupList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".groupList", "");
	}
	
	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int selectOneCount(CodeGroupVo vo) {
		System.out.println("vo wtf" + vo.getShValue());
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int insert(CodeVo vo, Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int update(CodeVo vo, Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
}

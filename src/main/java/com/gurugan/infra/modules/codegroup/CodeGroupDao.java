package com.gurugan.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

//	Inject : 데이터베이스 여러개(schema)를 사용하여 서비스를 생성할때 사용
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.gurugan.infra.modules.codegroup.CodeGroupMapper";

	public List<CodeGroup> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
	}

}

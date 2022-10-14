package com.gurugan.infra.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.gurugan.infra.modules.product.ProductMapper";
	
	public List<Product> selectList(ProductVo vo) {
		List<Product> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Product selectOne(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	
	public int selectOneCount(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<Product> selectProductOption(ProductVo vo) {
		List<Product> list = sqlSession.selectList(namespace + ".selectProductOption", vo);
		return list;
	}
	
	public int insert(Product dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
}

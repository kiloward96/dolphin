package com.gurugan.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;

	
	// select
	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Product selectOne(ProductVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Product> selectProductOption(ProductVo vo) throws Exception {
		return dao.selectProductOption(vo);
	}
	
	// insert

	@Override
	public int insert(Product dto) throws Exception {
		return dao.insert(dto);
	}

}

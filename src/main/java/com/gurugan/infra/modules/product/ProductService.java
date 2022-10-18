package com.gurugan.infra.modules.product;

import java.util.List;

public interface ProductService {
	
	public List<Product> selectList(ProductVo vo) throws Exception; 

	public Product selectOne(ProductVo vo) throws Exception;
	
	public List<Product> selectProductOption(ProductVo vo) throws Exception;
	
	public int selectOneCount(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception;
	
	public int update(Product dto) throws Exception;
	
	public int insertOption(Product dto) throws Exception;
	
	public int updateOption(Product dto) throws Exception;
	
	
}

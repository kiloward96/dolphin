package com.gurugan.infra.modules.product;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Product dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Product dto, String tableName) throws Exception;
	
	public List<Product> selectList(ProductVo vo) throws Exception; 

	public Product selectOne(ProductVo vo) throws Exception;
	
	public List<Product> selectProductOption(ProductVo vo) throws Exception;
	
	public int selectOneCount(ProductVo vo) throws Exception;
	
	public int insert(Product dto) throws Exception;
	
	public int update(Product dto) throws Exception;
	
	public int insertOption(Product dto) throws Exception;
	
	public int updateOption(Product dto) throws Exception;
	
	
}

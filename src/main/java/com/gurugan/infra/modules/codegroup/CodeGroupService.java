package com.gurugan.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception;

	public int insert(CodeGroup dto) throws Exception; 
	
	public int update(CodeGroup dto) throws Exception; 
	
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception; 
	
	public int selectOneCount(CodeGroupVo vo) throws Exception;
	
//	for cache
//	public static List<CodeGroup> cachedCodeArrayList = new ArrayList<CodeGroup>();
	
}

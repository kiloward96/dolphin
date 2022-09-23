package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface CodeService {
	
	public List<Code> selectList(CodeVo vo) throws Exception; 
	
	public Code selectOne(CodeVo vo) throws Exception;
	
	public List<Code> groupList() throws Exception; 
	
	public int insert(Code dto) throws Exception; 
	
	public int update(Code dto) throws Exception;
	
	public int selectOneCount(CodeVo vo) throws Exception;
	
	public int selectOneIdCheck(Code dto) throws Exception;
	
}

package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface CodeService {
	
	public List<Code> selectList() throws Exception; 
	
	public List<Code> groupList() throws Exception; 
	
	public int insert(Code dto) throws Exception; 
}

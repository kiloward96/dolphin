package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList();
	}
	
	@Override
	public List<Code> groupList() throws Exception {
		return dao.groupList();
	}
	
	@Override
	public int insert(Code dto) throws Exception {

		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
		
	}
}

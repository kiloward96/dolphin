package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Code> groupList(CodeVo vo) throws Exception {
		return dao.groupList(vo);
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		Code result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	
	@Override
	public int insert(Code dto) throws Exception {

		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception {
		int result = dao.update(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
}

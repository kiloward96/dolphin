package com.gurugan.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
	CodeGroupDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		
		vo.setShStartDate(vo.getShStartDate() + " 00:00:00");
		vo.setShEndDate(vo.getShEndDate() + " 23:59:59");
		
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
}

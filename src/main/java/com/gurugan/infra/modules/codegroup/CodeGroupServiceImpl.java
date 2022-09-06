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
		
//		if (vo.getShDate() == null && vo.getShStartDate().equals("") && vo.getShEndDate().equals("")) {
//			vo.setShDate(1);
//			vo.setShStartDate("1800-01-01 00:00:00");
//			vo.setShEndDate("5000-12-31 23:59:59");
//		} else {
//			vo.setShStartDate(vo.getShStartDate() + " 00:00:00");
//			vo.setShEndDate(vo.getShEndDate() + " 23:59:59");
//		}
		vo.setShStartDate(vo.getShStartDate() + " 00:00:00");
		vo.setShEndDate(vo.getShEndDate() + " 23:59:59");
		
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
}

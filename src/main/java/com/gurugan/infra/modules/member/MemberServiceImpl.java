package com.gurugan.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int insert(MemberAddress dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	@Override
	public int update(Member dto) throws Exception {
		System.out.println(dto.getMBseq());
		int result = dao.update(dto);
		System.out.println("service result:" + result);
		return result;
	}

}

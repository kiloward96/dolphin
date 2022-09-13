package com.gurugan.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(Member vo) throws Exception {
		return dao.selectList();
	}
	
	public Member selectOne(Member vo) throws Exception {
		return dao.selectOne();
	}

}

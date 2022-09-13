package com.gurugan.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(Member vo) throws Exception;
	
	public Member selectOne(Member vo) throws Exception; 
}

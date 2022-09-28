package com.gurugan.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurugan.infra.common.util.UtilSecurity;

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
	public int insert(Member dto) throws Exception {
		dto.setMBpassword(UtilSecurity.encryptSha256(dto.getMBpassword()));
    	dto.setMBname(dto.getMBname());
//    	dto.setMBname(dto.getIfmmLastName() + dto.getIfmmFirstName());
//    	dto.setIfmmPwdModDate(UtilDateTime.nowDate());
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	@Override
	public int update(Member dto) throws Exception {
		dto.setMBpassword(UtilSecurity.encryptSha256(dto.getMBpassword()));
		System.out.println(dto.getMBseq());
		int result = dao.update(dto);
		System.out.println("service result:" + result);
		return result;
	}
	
	public int selectOneIdCheck(Member dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		System.out.println("service result: " + result);
		return result;
		
	}

	public Member selectOneId(Member dto) throws Exception {
		
    	return dao.selectOneId(dto);
	}
	
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setMBpassword(UtilSecurity.encryptSha256(dto.getMBpassword()));
    	dto.setMBname(dto.getMBname());
		return dao.selectOneLogin(dto);
	}
	
}

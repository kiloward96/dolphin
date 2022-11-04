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
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {
			dto.setMBpassword(UtilSecurity.encryptSha256(dto.getMBpassword()));
			dto.setMBname(dto.getMBname());
//    	dto.setMBname(dto.getIfmmLastName() + dto.getIfmmFirstName());
//    	dto.setIfmmPwdModDate(UtilDateTime.nowDate());
			dao.insert(dto);
		
		return 1;
		
	}
	
	
	
	@Override
	public int insertAddress(Member dto) throws Exception {
		int result = dao.insertAddress(dto);
		System.out.println("service address result: " + result);
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

	@Override
	public Member snsLoginCheck(Member dto) throws Exception {

		return dao.snsLoginCheck(dto);
	}

	@Override
	public int kakaoInst(Member dto) throws Exception {
		System.out.println(dto);
		System.out.println(dto.getMBname());
		System.out.println(dto.getMBemail());
		System.out.println(dto.getToken());
		return dao.kakaoInst(dto);
	}
	
	
	
	
	
}

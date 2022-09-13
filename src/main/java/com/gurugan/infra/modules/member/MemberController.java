package com.gurugan.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	@RequestMapping(value = "/member")
	public class MemberController {

	
	// Xdmin Page
		@Autowired
		MemberServiceImpl service;

		@RequestMapping(value = "memberList")
		public String MemberList(Model model, Member vo) throws Exception {

			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);

			return "infra/member/xdmin/memberList";
		}
		
		@RequestMapping(value = "MemberForm")
		public String MemberForm (Model model, Member vo) throws Exception {
			Member list = service.selectOne(vo);
			model.addAttribute("list", list);
			
			return "infra/member/xdmin/memberForm";
		}
		
//		@RequestMapping(value = "memberReg")
	}
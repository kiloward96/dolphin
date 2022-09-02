package com.gurugan.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	@RequestMapping(value = "/member")
	public class MemberController {

		@Autowired
		MemberServiceImpl service;

		@RequestMapping(value = "memberList")
		public String MemberList(Model model) throws Exception {

			List<Member> list = service.selectList();
			model.addAttribute("list", list);

			return "infra/member/xdmin/memberList";
		}
	}
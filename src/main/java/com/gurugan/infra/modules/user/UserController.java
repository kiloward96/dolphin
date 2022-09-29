package com.gurugan.infra.modules.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurugan.infra.modules.member.Member;

@Controller
public class UserController {
	
	@RequestMapping(value = "login")
	public String login(Member dto, Model model) {
		
		return "infra/member/user/login";

	}
	
	@RequestMapping(value = "register")
	public String register(Member dto, Model model) {

		return "infra/member/user/register";

	}

}

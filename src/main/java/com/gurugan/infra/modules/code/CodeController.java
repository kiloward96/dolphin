package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code")
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "codeList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectList();
		model.addAttribute("list", list);

		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeView")
	public String codeView(Model model) throws Exception {
		
		List<Code> list = service.groupList();
		model.addAttribute("groupList", list);
		
		return "infra/code/xdmin/codeView";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		return "redirect:/code/codeList";
	}
}

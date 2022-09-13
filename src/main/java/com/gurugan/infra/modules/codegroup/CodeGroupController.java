package com.gurugan.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		return "redirect:/codeGroup/codeGroupModForm";
	}
	
	@RequestMapping(value = "codeGroupModForm")
	public String codeGroupModForm() throws Exception {
		return "infra/codegroup/xdmin/codeGroupModForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) throws Exception {
		int result = service.update(dto);
		System.out.println("controller Result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupModForm";
	}
	
}

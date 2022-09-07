package com.gurugan.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		System.out.println("vo.getShValue2(): " + vo.getShValue2());
		System.out.println("vo.getShOption2(): " + vo.getShOption2());
		
		System.out.println("vo.ShStartDate(): " + vo.getShStartDate());
		System.out.println("vo.getShEndDate(): " + vo.getShEndDate());
		System.out.println("vo.getShDate(): " + vo.getShDate());

		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupView() throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}

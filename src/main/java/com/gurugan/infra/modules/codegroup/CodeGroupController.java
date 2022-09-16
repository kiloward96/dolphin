package com.gurugan.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPagin(CodeGroupVo vo) throws Exception {
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		setSearchAndPagin(vo);
		vo.setParamsPaging(service.selectOneCount(vo));
		System.out.println("controller Result: " + vo);
		
		System.out.println("sh vo value: " + vo.getShValue() + "| sh vo value2: " + vo.getShValue2());
		
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		vo.setCCGseq(dto.getCCGseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.update(dto);
		System.out.println("controller Result: " + result);
		
		vo.setCCGseq(dto.getCCGseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
}

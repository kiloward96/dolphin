package com.gurugan.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	public void setSearchAndPagin(CodeVo vo) throws Exception {
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
	}

	@RequestMapping(value = "codeList")
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		setSearchAndPagin(vo);
		/* vo.setParamsPaging(service.selectOneCount()); */
		System.out.println("sh vo value: " + vo.getShValue() + "| sh vo value2: " + vo.getShValue2());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		Code result = service.selectOne(vo);
		List<Code> list = service.groupList();
		model.addAttribute("item", result);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.update(dto);
		System.out.println("controller Result: " + result);
		vo.setCCseq(dto.getCCseq());
		System.out.println("왜래키: " + vo.getCCGseq());
		System.out.println("왜래키2: " + vo.getCCcommonCodeGroup_seq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
}

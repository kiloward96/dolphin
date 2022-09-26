package com.gurugan.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
	@RequestMapping(value = "/member")
	public class MemberController {

	
	// Xdmin Page
		@Autowired
		MemberServiceImpl service;
		
		@RequestMapping(value = "memberList")
		public String MemberList(@ModelAttribute ("vo") MemberVo vo, Model model) throws Exception {
			System.out.println("test1: " + vo.getMBseq());
			System.out.println("test2: " + vo.getMBid());
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);

			return "infra/member/xdmin/memberList";
		}
		
		@RequestMapping(value = "memberForm")
		public String MemberForm (@ModelAttribute ("vo") MemberVo vo, Model model) throws Exception {
			
			Member result = service.selectOne(vo);
			model.addAttribute("item", result);
			System.out.println("test1: " + vo.getMBseq());
			System.out.println("test2: " + vo.getMBid());
			
			return "infra/member/xdmin/memberForm";
		}
		
		@RequestMapping(value = "memberInst")
		public String MemberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
			int result = service.insert(dto);
			System.out.println("controller Result: " + result);
			
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/member/memberForm";
		}
		
		@RequestMapping(value = "memberUpdt")
		public String MemberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
			
			int result = service.update(dto);
			System.out.println("controller Result: " + result);
			
			vo.setMBseq(dto.getMBseq());
			redirectAttributes.addFlashAttribute("vo", vo);
			
			return "redirect:/member/memberForm";
		}
		
		@ResponseBody
		@RequestMapping(value = "checkId")
		public Map<String, Object> checkId(Member dto) throws Exception {

			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			int result = service.selectOneIdCheck(dto);

			if (result > 0) {
				returnMap.put("rt", "fail");
			} else {
				returnMap.put("rt", "success");
			}
			return returnMap;
		}
		
		
		
//		@RequestMapping(value = "memberReg")
	}
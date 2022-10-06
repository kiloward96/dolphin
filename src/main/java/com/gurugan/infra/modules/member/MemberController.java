package com.gurugan.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gurugan.infra.common.constants.Constants;

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
				if (!dto.getMBid().equals("") && dto.getAddressZipcode() != null || dto.getAddressMain() != null) {
					System.out.println("Controller Address insert");
					
					System.out.println(dto.getAddressZipcode());
					service.insertAddress(dto);
				}
			
			redirectAttributes.addFlashAttribute("vo", vo);
			
//				return "redirect:/member/memberForm";

				return "redirect:/";
			
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
		
		@ResponseBody
		@RequestMapping(value = "loginProc")
		public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();

			Member rtMember = service.selectOneId(dto);

			if (rtMember != null) {
				Member rtMember2 = service.selectOneLogin(dto);

				if (rtMember2 != null) {
					
//					if(dto.getAutoLogin() == true) {
//						UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(), Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE);
//					} else {
//						// by pass
//					}
					
					httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
					httpSession.setAttribute("sessSeq", rtMember2.getMBseq());
					httpSession.setAttribute("sessId", rtMember2.getMBid());
					httpSession.setAttribute("sessName", rtMember2.getMBname());
					httpSession.setAttribute("sessGrade", rtMember2.getMBgrade());
					
					rtMember2.setIflgResultNy(1);
//					service.insertLogLogin(rtMember2);

//					Date date = rtMember2.getIfmmPwdModDate();
//					LocalDateTime ifmmPwdModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());

//					if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime, UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
//						returnMap.put("changePwd", "true");
//					}

					returnMap.put("rt", "success");
				} else {
					dto.setMBseq(rtMember.getMBseq());
					dto.setIflgResultNy(0);
//					service.insertLogLogin(dto);

					returnMap.put("rt", "fail");
				}
			} else {
				dto.setIflgResultNy(0);
//				service.insertLogLogin(dto);

				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "logoutProc")
		public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
//			UtilCookie.deleteCookie();
			httpSession.invalidate();
			returnMap.put("rt", "success");
			return returnMap;
		}
		
		public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
			HttpSession httpSession =  httpServletRequest.getSession();
			String rtSeq = (String) httpSession.getAttribute("sessSeq");
			return rtSeq;
		}
		
	}
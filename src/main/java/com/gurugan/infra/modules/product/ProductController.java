package com.gurugan.infra.modules.product;

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
	@RequestMapping(value = "/product")
	public class ProductController {
	
	@Autowired
	ProductServiceImpl service;
	
	public void setSearchAndPagin(ProductVo vo) throws Exception {
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
	}
	
	@RequestMapping(value = "productList")
	public String productList(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
		setSearchAndPagin(vo);
		vo.setParamsPaging(service.selectOneCount(vo)); 
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productForm")
	public String productForm(@ModelAttribute ("vo") ProductVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("test : " + vo.getRowNumToShow());
		List<Product> option = service.selectProductOption(vo);
		List<Product> imgList = service.selectListUploaded(vo);
		model.addAttribute("option", option);
		model.addAttribute("imgList", imgList);
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "infra/product/xdmin/productForm";
		
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		vo.setPDseq(dto.getPDseq());
		System.out.println("Controller Insert result : " + result);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/product/productForm";
	}
	
	@RequestMapping(value = "productUpdt")
	public String productUpdt(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.update(dto);
		vo.setPDseq(dto.getPDseq());
		System.out.println("Controller Update result : " + result);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/product/productForm";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "InsertOption")
//	public Map<String, Object> InsertOption(ProductVo vo, Product dto) throws Exception {
//
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//		
//		int result = service.insertOption(dto);
//
//		if (result > 0) {
//			returnMap.put("rt", "fail");
//		} else {
//			returnMap.put("rt", "success");
//		}
//		return returnMap;
//	}

}

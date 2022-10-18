package com.gurugan.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
		System.out.println("test : " + vo.getRowNumToShow());

		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productForm")
	public String productForm(@ModelAttribute ("vo") ProductVo vo, Model model) throws Exception {
		System.out.println("test : " + vo.getRowNumToShow());
		Product result = service.selectOne(vo);
		List<Product> Option = service.selectProductOption(vo);
		model.addAttribute("item", result);
		model.addAttribute("option", Option);
		
		return "infra/product/xdmin/productForm";
		
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println("Controller result: " + result);
		
		
		vo.setPDseq(dto.getPDseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/product/productForm";
	}
	
	@RequestMapping(value = "productUpdt")
	public String productUpdt(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		
		/*
		 * for (int i = 0; i<dto.getUploadImgDeleteSeq().length; i++) {
		 * System.out.println(dto.getUploadImgDeleteSeq()[i]); }
		 */
		int result = service.update(dto);
		System.out.println("Controller Update result : " + result);
		
		vo.setPDseq(dto.getPDseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/product/productForm";
	}

}

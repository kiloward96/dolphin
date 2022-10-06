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
	
	@RequestMapping(value = "productList")
	public String productList(ProductVo vo, Model model) throws Exception {
		
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productForm")
	public String productForm(@ModelAttribute ("vo") ProductVo vo, Model model) throws Exception {
		
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/product/xdmin/productForm";
		
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println("Controller result: " + result);
		
		return "redirect:/product/productForm";
	}

}

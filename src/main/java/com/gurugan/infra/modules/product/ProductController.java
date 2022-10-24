package com.gurugan.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		List<Product> imgList = service.selectListUploaded(vo);
		model.addAttribute("item", result);
		model.addAttribute("option", Option);
		model.addAttribute("imgList", imgList);
		
		return "infra/product/xdmin/productForm";
		
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		System.out.println("Controller result: " + service.insert(dto));
		
		
		vo.setPDseq(dto.getPDseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/product/productForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "productUpdt", method = RequestMethod.POST)
	public String productUpdt(ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		
		/*
		 * for (int i = 0; i<dto.getUploadImgDeleteSeq().length; i++) {
		 * System.out.println(dto.getUploadImgDeleteSeq()[i]); }
		 */
		service.update(dto);
		System.out.println("Controller Update result : " + service.update(dto));
		System.out.println(dto.getUploadImg());
		vo.setPDseq(dto.getPDseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/product/productForm";
	}

}

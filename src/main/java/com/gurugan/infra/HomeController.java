package com.gurugan.infra;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "main";

	}
	
//	@RequestMapping(value = "/helloA", method = RequestMethod.GET)
//	public String helloA(Locale locale, Model model) {
//		
//		return "helloA";
//	}
//	
//	@RequestMapping(value = "/helloB", method = RequestMethod.GET)
//	public String helloB(Locale locale, Model model) {
//		
//		return "helloB";
//	}
//	
//	@RequestMapping(value = "/helloC", method = RequestMethod.GET)
//	public String helloC(Locale locale, Model model) {
//		
//		return "helloC";
//	}
//	
//	@RequestMapping(value = "/helloD", method = RequestMethod.GET)
//	public String helloD(Locale locale, Model model) {
//		
//		return "helloD";
//	}
//	
//	@RequestMapping(value = "/helloE", method = RequestMethod.GET)
//	public String helloE(Locale locale, Model model) {
//		
//		return "helloE";
//	}
	
}

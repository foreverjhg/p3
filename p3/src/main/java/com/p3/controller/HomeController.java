package com.p3.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.p3.service.ProductService;
import com.p3.service.ProjectService;
import com.p3.vo.ProductVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Resource(name = "projectService")
	private ProjectService projectService;
	
	@Resource(name = "productService")
	private ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/sample.do", method = RequestMethod.GET)
	public String sample(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sample";
	}
	
	/*
	 * @RequestMapping(value = "/menu.do", method = RequestMethod.GET) public String
	 * menu(Locale locale, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", locale);
	 * 
	 * Date date = new Date(); DateFormat dateFormat =
	 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	 * 
	 * String formattedDate = dateFormat.format(date);
	 * 
	 * model.addAttribute("serverTime", formattedDate );
	 * 
	 * return "menu"; }
	 */
	
	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "about";
	}
	
	@RequestMapping(value = "/photo.do", method = RequestMethod.GET)
	public String photo(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "photo";
	}
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String cart(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "cart";
	}
	
	@RequestMapping(value = "/finish.do", method = RequestMethod.GET)
	   public String finish(Locale locale, Model model, @RequestParam(value = "rs", required=false) String rs) throws Exception{
	      logger.info("Welcome home! The client locale is {}.", locale);
	      
	      Date date = new Date();
	      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	      
	      String formattedDate = dateFormat.format(date);
	      
	      model.addAttribute("serverTime", formattedDate );
	      
	      ProductVO vo = new ProductVO();
	      vo.setDishnum(rs);
	      
	      ProductVO result = productService.getProdInfo(vo);
	      model.addAttribute("result", result );
	      
	      System.out.println(rs);

	       return "result";
	   }
	
}

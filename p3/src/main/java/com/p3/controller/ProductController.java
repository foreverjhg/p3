package com.p3.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.p3.service.ProductService;
import com.p3.vo.ProductVO;
import com.p3.vo.ProjectVO;
import com.p3.vo.ReviewVO;

@Controller
public class ProductController {

	@Resource(name = "productService")
	private ProductService productService;

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	// 관리자 상품 등록 폼으로 이동
	@RequestMapping(value = "/registFrom.do")
	public String registFrom(Model model) throws Exception {

		int totcnt = productService.getTotCnt();

		String suffix = String.format("%05d", totcnt);

		logger.info(suffix);

		model.addAttribute("totalCount", suffix);

		return "product/registration";
	}

	// 관리자 상품 등록
	@RequestMapping(value = "/regist.do", produces = "text/plain;charset=EUC-KR")
	public String regist(Model model, @ModelAttribute("vo") ProductVO vo) throws Exception {

		SimpleDateFormat format1 = new SimpleDateFormat("yyyy");
		Date time = new Date();

		String time1 = format1.format(time);

		vo.setDishnum(time1 + "_Product_" + vo.getDishnum());
		vo.setImgby(vo.getImage().getBytes());

		logger.info(vo.toString());

		productService.setProductReg(vo);

		return "product/registration";
	}

	// 상품 정보 조회
	@RequestMapping(value = "/detail.do")
	public String detail(Model model) throws Exception {

		// 상위 페이지에서 준것처럼
		ProductVO vo = new ProductVO();
		vo.setDishnum("2021_Product_00002");

		ProductVO result = productService.getProdInfo(vo);

		List<ReviewVO> list = productService.getReview(vo);

		logger.info("detail : " + result.toString());
		model.addAttribute("result", result);

		if(list.size() !=0 || list != null) {
			logger.info("review : " + list.toString());
			model.addAttribute("size", list.size());
			model.addAttribute("review", list);
		}

		return "detail";
	}

	// 상품 이미지 생성
	@RequestMapping(value = "/imgShow.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
	public ResponseEntity<byte[]> imageShow(Model model, HttpServletRequest req) throws Exception {

		ProductVO vo = new ProductVO();
		vo.setDishnum(req.getParameter("dishnum"));
		ProductVO result = productService.getImageShow(vo);

		byte[] imageContent = (byte[]) result.getImgby();
		final HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_PNG);

		return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	}

	// 상품 한줄평 작성
	@RequestMapping(value = "/reviewReg.do")
	public String review(Model model, @ModelAttribute("vo") ReviewVO vo) throws Exception {

		logger.info("reviewReg : " + vo.toString());

		int cnt = productService.setReview(vo);

		return "redirect:/detail.do";
	}
}

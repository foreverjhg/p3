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
import org.springframework.web.bind.annotation.RequestParam;

import com.p3.service.ProductService;
import com.p3.vo.PagingVO;
import com.p3.vo.ProductVO;
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
      vo.setImgby1(vo.getImage1().getBytes());
      vo.setImgby2(vo.getImage2().getBytes());
      vo.setImgby3(vo.getImage3().getBytes());
      vo.setImgby4(vo.getImage4().getBytes());
      vo.setImgby5(vo.getImage5().getBytes());
      

      logger.info(vo.toString());

      productService.setProductReg(vo);

      return "product/registration";
   }

   // 상품 리스트 조회
   @RequestMapping(value = "/menuList.do")   
   public String menu(Model model)  throws Exception {
      
      List<ProductVO> list = productService.getMenuList();
      
      logger.info(list.toString());
      
      model.addAttribute("list", list);
      
      return "menu";
   }
   
   // 단품 정보 조회
   @RequestMapping(value = "/detail.do")
   public String detail(Model model, @ModelAttribute("pagingVO") PagingVO pagingVO, @RequestParam(value = "pageNo", required=false) String pageNo, @RequestParam(value = "dishnum", required=false) String dishnum,  @RequestParam(value = "flag", required=false) String flag) throws Exception {
       
      pagingVO.setDishnum(dishnum);
      
      int totcnt = productService.getReviewTotCnt(pagingVO);
      
      pagingVO.setPageSize(5); // 한페이지에 보일 게시글 수
      pagingVO.setPageNo(1); //현재 페이지 번호
     
     
      if(pageNo != null) {
         pagingVO.setPageNo(Integer.parseInt(pageNo));
      }
      pagingVO.setBlockSize(10);
      pagingVO.setTotalCount(totcnt); //게시물 총 갯수
      
     model.addAttribute("paging", pagingVO);
      
      ProductVO result = productService.getProdInfo(pagingVO);
      
      List<ReviewVO> list = productService.getReview(pagingVO);

      if(result != null) {
         logger.info("detail : " + result.toString());
         model.addAttribute("result", result);
         model.addAttribute("flag",flag);
      }

      if(list.size() !=0 || list != null) {
         logger.info("review : " + list.toString());
         model.addAttribute("size", totcnt);
         model.addAttribute("review", list);
      }

      return "detail";
   }

   // 상품 이미지 생성 1
   @RequestMapping(value = "/imgShow.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
   public ResponseEntity<byte[]> imageShow(Model model, HttpServletRequest req) throws Exception {

      ProductVO vo = new ProductVO();
      vo.setDishnum(req.getParameter("dishnum"));
      ProductVO result = productService.getImageShow(vo);

      byte[] imageContent = (byte[]) result.getImgby1();
      final HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.IMAGE_PNG);

      return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
   }

   // 상품 이미지 생성 2
   @RequestMapping(value = "/imgShow2.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
   public ResponseEntity<byte[]> imageShow2(Model model, HttpServletRequest req) throws Exception {

      ProductVO vo = new ProductVO();
      vo.setDishnum(req.getParameter("dishnum"));
      ProductVO result = productService.getImageShow(vo);

      byte[] imageContent = (byte[]) result.getImgby2();
      final HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.IMAGE_PNG);

      return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
   }

   // 상품 이미지 생성 3
   @RequestMapping(value = "/imgShow3.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
   public ResponseEntity<byte[]> imageShow3(Model model, HttpServletRequest req) throws Exception {

      ProductVO vo = new ProductVO();
      vo.setDishnum(req.getParameter("dishnum"));
      ProductVO result = productService.getImageShow(vo);

      byte[] imageContent = (byte[]) result.getImgby3();
      final HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.IMAGE_PNG);

      return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
   }

   // 상품 이미지 생성 4
   @RequestMapping(value = "/imgShow4.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
   public ResponseEntity<byte[]> imageShow4(Model model, HttpServletRequest req) throws Exception {

      ProductVO vo = new ProductVO();
      vo.setDishnum(req.getParameter("dishnum"));
      ProductVO result = productService.getImageShow(vo);

      byte[] imageContent = (byte[]) result.getImgby4();
      final HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.IMAGE_PNG);

      return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
   }

   // 상품 이미지 생성 5
   @RequestMapping(value = "/imgShow5.do", produces = "text/plain;charset=EUC-KR", method = RequestMethod.GET)
   public ResponseEntity<byte[]> imageShow5(Model model, HttpServletRequest req) throws Exception {

      ProductVO vo = new ProductVO();
      vo.setDishnum(req.getParameter("dishnum"));
      ProductVO result = productService.getImageShow(vo);

      byte[] imageContent = (byte[]) result.getImgby5();
      final HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.IMAGE_PNG);

      return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
   }

   // 상품 한줄평 작성
   @RequestMapping(value = "/reviewReg.do")
   public String review(Model model, @ModelAttribute("vo") ReviewVO vo) throws Exception {

      logger.info("reviewReg : " + vo.toString());

      productService.setReview(vo);

      return "redirect:/detail.do?dishnum="+vo.getDishnum()+"&flag="+vo.getFlag();
   }
   
}
package com.p3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p3.dao.ProductDAO;
import com.p3.service.ProductService;
import com.p3.vo.PagingVO;
import com.p3.vo.ProductVO;
import com.p3.vo.ReviewVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {

   @Autowired
   private ProductDAO dao;
   
   @Override
   @Transactional
   public int getTotCnt() throws Exception {
      return dao.getTotCnt();
   }

   @Override
   @Transactional
   public int setProductReg(ProductVO vo) throws Exception {
      return dao.setProductReg(vo);
   }

   @Override
   @Transactional
   public ProductVO getImageShow(ProductVO vo) throws Exception {
      return dao.getImageShow(vo);
   }

   @Override
   @Transactional
   public ProductVO getProdInfo(PagingVO vo) throws Exception {
      return dao.getProdInfo(vo);
   }

   @Override
   @Transactional
   public int setReview(ReviewVO vo) throws Exception {
      return dao.setReview(vo);
   }

   @Override
   @Transactional
   public List<ReviewVO> getReview(PagingVO vo) throws Exception {
      return dao.getReview(vo);
   }

   @Override
   @Transactional
   public int getReviewTotCnt(PagingVO pagingVO) throws Exception {
      return dao.getReviewTotCnt(pagingVO);
   }

   @Override
   @Transactional
   public List<ProductVO> getMenuList() throws Exception {
      return dao.getMenuList();
   }

	@Override
	@Transactional
	public List<ProductVO> gethan() throws Exception {
		return dao.gethan();
	}

	@Override
	@Transactional
	public List<ProductVO> getyang() throws Exception {
		return dao.getyang();
	}

	@Override
	@Transactional
	public ProductVO getuserCart(ProductVO cart) throws Exception {
		return dao.getuserCart(cart);
	}
  
   @Override
   @Transactional
   public ProductVO getProdInfo(ProductVO vo) throws Exception {
      return dao.getuserCart(vo);
   }
}
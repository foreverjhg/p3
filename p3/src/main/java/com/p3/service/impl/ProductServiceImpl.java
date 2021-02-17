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
	public int setReview(ReviewVO vo) throws Exception {
		return dao.setReview(vo);
	}

	@Override
	public List<ReviewVO> getReview(PagingVO vo) throws Exception {
		return dao.getReview(vo);
	}

	@Override
	public int getReviewTotCnt(PagingVO pagingVO) throws Exception {
		return dao.getReviewTotCnt(pagingVO);
	}

}

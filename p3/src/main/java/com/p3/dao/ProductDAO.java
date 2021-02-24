package com.p3.dao;

import java.util.List;

import com.p3.vo.PagingVO;
import com.p3.vo.ProductVO;
import com.p3.vo.ReviewVO;

public interface ProductDAO {

	int getTotCnt() throws Exception;

	int setProductReg(ProductVO vo) throws Exception;

	ProductVO getImageShow(ProductVO vo) throws Exception;

	ProductVO getProdInfo(PagingVO vo) throws Exception;

	int setReview(ReviewVO vo) throws Exception;

	List<ReviewVO> getReview(PagingVO vo) throws Exception;

	int getReviewTotCnt(PagingVO pagingVO) throws Exception;

	List<ProductVO> getMenuList() throws Exception;

	List<ProductVO> gethan() throws Exception;

	List<ProductVO> getyang() throws Exception;

	ProductVO getuserCart(ProductVO cart) throws Exception;

	List<ProductVO> getbestList() throws Exception;
}

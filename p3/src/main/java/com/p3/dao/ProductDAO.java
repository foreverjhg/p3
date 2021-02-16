package com.p3.dao;

import java.util.List;

import com.p3.vo.ProductVO;
import com.p3.vo.ReviewVO;

public interface ProductDAO {

	int getTotCnt() throws Exception;

	int setProductReg(ProductVO vo) throws Exception;

	ProductVO getImageShow(ProductVO vo) throws Exception;

	ProductVO getProdInfo(ProductVO vo) throws Exception;

	int setReview(ReviewVO vo) throws Exception;

	List<ReviewVO> getReview(ProductVO vo) throws Exception;
}

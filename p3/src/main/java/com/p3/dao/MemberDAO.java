package com.p3.dao;

import java.util.List;

import com.p3.vo.MemberVO;

public interface MemberDAO {

	int getUserReg(MemberVO user) throws Exception;

	String getUserLog(MemberVO login) throws Exception;

	

}

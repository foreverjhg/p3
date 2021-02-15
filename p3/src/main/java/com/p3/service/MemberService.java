package com.p3.service;

import java.util.List;

import com.p3.vo.MemberVO;
import com.p3.vo.ProjectVO;

public interface MemberService {

	int getUserReg(MemberVO user) throws Exception;

	String getUserLog(MemberVO login) throws Exception;

}

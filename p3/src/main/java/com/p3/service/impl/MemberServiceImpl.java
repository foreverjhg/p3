package com.p3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p3.dao.MemberDAO;
import com.p3.service.MemberService;
import com.p3.vo.MemberVO;
import com.p3.vo.ProjectVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Override
	public int getUserReg(MemberVO user) throws Exception {
		return dao.getUserReg(user);
	}
	
	
	@Transactional
	public String getUserLog(MemberVO login) throws Exception {
		return dao.getUserLog(login);
	}

}

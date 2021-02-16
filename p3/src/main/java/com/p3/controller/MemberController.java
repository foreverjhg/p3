package com.p3.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p3.service.MemberService;
import com.p3.vo.MemberVO;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "/userReg.do")
	public String userReg(Model model, @ModelAttribute("user") MemberVO user) throws Exception {

		String url = "";

		int cnt = memberService.getUserReg(user);

		logger.info("회원가입 완료 :" + cnt);

		if (cnt == 1) {
			url = "member/success";
		} else {
			url = "member/failed";
		}

		return url;
	}

	@RequestMapping(value = "/userLog.do")
	public String userLog(Model model, @ModelAttribute("login") MemberVO login, HttpServletRequest req)
			throws Exception {

		String url = "";

		MemberVO member = memberService.getUserLog(login);

		logger.info("로그인 완료 :" + member);

		HttpSession session = req.getSession();
		session.setAttribute("member", member);

		if (member != null) {
			url = "member/success";
		} else {
			url = "member/failed";
		}

		return url;
	}

	@RequestMapping(value = "/userLogOut.do")
	public String userLogOut(HttpServletRequest req) throws Exception {

		String url = "";

		HttpSession session = req.getSession();
		session.removeAttribute("member");

		url = "member/success";

		return url;
	}

}

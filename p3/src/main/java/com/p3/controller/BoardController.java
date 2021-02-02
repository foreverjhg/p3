package com.p3.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p3.service.ProjectService;
import com.p3.vo.ProjectVO;

@Controller
public class BoardController {

	@Resource(name = "projectService")
	private ProjectService projectService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/list.do")
	public String projectList(Model model) throws Exception {

	    List<ProjectVO> list = projectService.getAllBoard();

	    logger.info(list.toString());

	    model.addAttribute("list", list);

	    return "board/board_list";
	}
	
	@RequestMapping(value = "/writeView.do")
	public String projectWriteFrom(Model model) throws Exception {
	    return "board/board_write";
	}
	
	@RequestMapping(value = "/write.do", produces="text/plain;charset=EUC-KR")
	public String projectWrite(Model model, @ModelAttribute("user") ProjectVO user) throws Exception {
		projectService.getWrite(user);
		return projectList(model);
	}
	
}

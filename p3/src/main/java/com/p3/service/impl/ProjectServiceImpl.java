package com.p3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p3.dao.ProjectDAO;
import com.p3.service.ProjectService;
import com.p3.vo.ProjectVO;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDAO dao;
	
	@Override
	@Transactional
	public List<ProjectVO> getAllBoard() throws Exception {
		return dao.getAllBoard();
	}

	@Override
	@Transactional
	public int getWrite(ProjectVO user) throws Exception {
		return dao.getWrite(user);
	}

}

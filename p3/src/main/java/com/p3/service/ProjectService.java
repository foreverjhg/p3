package com.p3.service;

import java.util.List;

import com.p3.vo.ProjectVO;

public interface ProjectService {
	
	List<ProjectVO> getAllBoard() throws Exception;

	int getWrite(ProjectVO user) throws Exception;
}

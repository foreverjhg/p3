package com.p3.dao;

import java.util.List;
import com.p3.vo.ProjectVO;

public interface ProjectDAO {

	List<ProjectVO> getAllBoard() throws Exception;

	int getWrite(ProjectVO user) throws Exception;
}

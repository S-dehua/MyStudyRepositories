package com.atguigu.crowd.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.atguigu.crowd.entity.vo.DetailProjectVO;
import com.atguigu.crowd.entity.vo.PortalTypeVO;
import com.atguigu.crowd.entity.vo.ProjectVO;
import com.atguigu.crowd.service.api.ProjectService;
import com.atguigu.crowd.util.ResultEntity;

@RestController
public class ProjectProviderHandler {

	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/get/project/detail/remote/{projectId}")
	public ResultEntity<DetailProjectVO> getDetailProjectVORemote(@PathVariable("projectId") Integer projectId) {
		
		try {
			DetailProjectVO detailProjectVO = projectService.getDetailProjectVO(projectId);
			
			return ResultEntity.successWithData(detailProjectVO);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return ResultEntity.failed(e.getMessage());
		}
		
	}
	
	@RequestMapping("/get/portal/type/project/data/remote")
	public ResultEntity<List<PortalTypeVO>> getPortalTypeProjectDataRemote() {
		
		try {
			List<PortalTypeVO> portalTypeVOList = projectService.getPortalTypeVO();
			
			return ResultEntity.successWithData(portalTypeVOList);
		} catch (Exception e) {
			e.printStackTrace();
			
			return ResultEntity.failed(e.getMessage());
		}
		
	}
	
	@RequestMapping("/save/project/vo/remote") ResultEntity<String> saveProjectVORemote(
			@RequestBody ProjectVO projectVO,
			@RequestParam("memberId") Integer memberId){
		
		try {
			projectService.saveProject(projectVO,memberId);
			
			return ResultEntity.successWithoutData();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return ResultEntity.failed(e.getMessage());
		}

	}
	
}

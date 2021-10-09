/**
 * 
 */
package com.atguigu.crowd.service.api;

import java.util.List;
import java.util.Map;

import com.atguigu.crowd.entity.Auth;

/**
 * @author coffee
 *
 */
public interface AuthService {

	List<Auth> getAll();

	List<Integer> getAssignedAuthIdByRoleId(Integer roleId);

	void saveRoleAuthRelathinship(Map<String, List<Integer>> map);

	List<String> getAssignedAuthByAdminId(Integer adminId);

}

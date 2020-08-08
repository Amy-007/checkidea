package com.amy.demo.business.service;

import com.amy.demo.vo.request.PermissionAddReqVO;
import com.amy.demo.vo.request.PermissionPageReqVO;
import com.amy.demo.vo.request.PermissionUpdateReqVO;
import com.amy.demo.vo.request.RolePermissionOperationReqVO;
import com.amy.demo.vo.response.PermissionRespNode;

import java.util.List;


public interface RolePermissionService {

    List<String> getPermissionIdsByRoles(List<String> roleIds);

    List<String> getPermissionIdsByRoleId(String roleId);

    int removeByRoleId(String roleId);

    void addRolePermission(RolePermissionOperationReqVO vo);

    int removeByPermissionId(String permissionId);

    List<String> getRoleIds(String permissionId);
}

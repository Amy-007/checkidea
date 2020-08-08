package com.amy.demo.business.service;

import com.amy.demo.entity.Permission;
import com.amy.demo.vo.request.PermissionAddReqVO;
import com.amy.demo.vo.request.PermissionPageReqVO;
import com.amy.demo.vo.request.PermissionUpdateReqVO;
import com.amy.demo.vo.response.PageVO;
import com.amy.demo.vo.response.PermissionRespNode;

import java.util.List;
import java.util.Set;


public interface PermissionService {

    List<Permission> getPermission(String userId);

    Set<String> getPermissionsByUserId(String userId);

    List<PermissionRespNode> permissionTreeList(String userId);

    Permission addPermission(PermissionAddReqVO vo);

    void deleted(String permissionId);

    void updatePermission(PermissionUpdateReqVO vo);

    PageVO<Permission> pageInfo(PermissionPageReqVO vo);

    Permission detailInfo(String permissionId);

    List<Permission> selectAll();

    List<PermissionRespNode> selectAllByTree();

    List<PermissionRespNode> selectAllMenuByTree(String permissionId);
}

package com.amy.demo.business.service;

import com.amy.demo.entity.Role;
import com.amy.demo.vo.request.RoleAddReqVO;
import com.amy.demo.vo.request.RolePageReqVO;
import com.amy.demo.vo.request.RoleUpdateReqVO;
import com.amy.demo.vo.response.PageVO;

import java.util.List;


public interface RoleService {

    Role addRole(RoleAddReqVO vo);

    void updateRole(RoleUpdateReqVO vo, String accessToken);

    Role detailInfo(String id);

    void deletedRole(String id);

    PageVO<Role> pageInfo(RolePageReqVO vo);

    List<String> getRoleNames(String userId);

    List<Role> getRoleInfoByUserId(String userId);

    List<Role> selectAllRoles();
}

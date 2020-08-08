package com.amy.demo.business.service;

import com.amy.demo.vo.request.UserRoleOperationReqVO;

import java.util.List;


public interface UserRoleService {

    List<String> getRoleIdsByUserId(String userId);

    List<String> getUserIdsByRoleIds(List<String> roleIds);

    List<String> getInfoByUserIdByRoleId( String roleId);

    void addUserRoleInfo(UserRoleOperationReqVO vo);

    int removeByUserId(String userId);
}

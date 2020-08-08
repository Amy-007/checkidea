package com.amy.demo.business.service.impl;

import com.amy.demo.business.mapper.RolePermissionMapper;
import com.amy.demo.business.service.RolePermissionService;
import com.amy.demo.entity.RolePermission;
import com.amy.demo.enums.BaseResponseCode;
import com.amy.demo.exceptions.BusinessException;
import com.amy.demo.vo.request.RolePermissionOperationReqVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Service
@Slf4j
public class RolePermissionServiceImpl implements RolePermissionService {

    @Autowired
    private RolePermissionMapper rolePermissionMapper;

    @Override
    public List<String> getPermissionIdsByRoles(List<String> roleIds) {
        return rolePermissionMapper.getPermissionIdsByRoles(roleIds);
    }

    @Override
    public List<String> getPermissionIdsByRoleId(String roleId) {
        return rolePermissionMapper.getPermissionIdsByRoleId(roleId);
    }

    @Override
    public int removeByRoleId(String roleId) {
        return rolePermissionMapper.removeByRoleId(roleId);
    }



    @Override
    public void addRolePermission(RolePermissionOperationReqVO vo) {

        Date createTime=new Date();
        List<RolePermission> list=new ArrayList<>();
        for (String permissionId:vo.getPermissionIds()){
            RolePermission rolePermission=new RolePermission();
            rolePermission.setId(UUID.randomUUID().toString());
            rolePermission.setCreateTime(createTime);
            rolePermission.setPermissionId(permissionId);
            rolePermission.setRoleId(vo.getRoleId());
            list.add(rolePermission);
        }
        rolePermissionMapper.removeByRoleId(vo.getRoleId());
        int count=rolePermissionMapper.batchRolePermission(list);
        if (count==0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }

    @Override
    public int removeByPermissionId(String permissionId) {

        return rolePermissionMapper.removeByPermissionId(permissionId);
    }

    @Override
    public List<String> getRoleIds(String permissionId) {

        return rolePermissionMapper.getRoleIds(permissionId);
    }
}

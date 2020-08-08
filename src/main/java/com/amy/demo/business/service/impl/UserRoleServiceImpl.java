package com.amy.demo.business.service.impl;

import com.amy.demo.business.mapper.UserRoleMapper;
import com.amy.demo.business.service.UserRoleService;
import com.amy.demo.entity.UserRole;
import com.amy.demo.enums.BaseResponseCode;
import com.amy.demo.exceptions.BusinessException;
import com.amy.demo.vo.request.UserRoleOperationReqVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Slf4j
public class UserRoleServiceImpl implements UserRoleService {

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public List<String> getRoleIdsByUserId(String userId) {
        return userRoleMapper.getRoleIdsByUserId(userId);
    }

    @Override
    public List<String> getUserIdsByRoleIds(List<String> roleIds) {
        return userRoleMapper.getUserIdsByRoleIds(roleIds);
    }

    @Override
    public List<String> getInfoByUserIdByRoleId(String roleId) {
        return userRoleMapper.getInfoByUserIdByRoleId(roleId);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addUserRoleInfo(UserRoleOperationReqVO vo) {
        if(vo.getRoleIds()==null||vo.getRoleIds().isEmpty()){
            return;
        }
        Date createTime=new Date();
        List<UserRole> list=new ArrayList<>();
        for (String roleId:vo.getRoleIds()){
            UserRole sysUserRole=new UserRole();
            sysUserRole.setId(UUID.randomUUID().toString());
            sysUserRole.setCreateTime(createTime);
            sysUserRole.setUserId(vo.getUserId());
            sysUserRole.setRoleId(roleId);
            list.add(sysUserRole);
        }
        userRoleMapper.removeByUserId(vo.getUserId());
        int count=userRoleMapper.batchUserRole(list);
        if (count==0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }

    @Override
    public int removeByUserId(String userId) {
        return userRoleMapper.removeByUserId(userId);
    }
}

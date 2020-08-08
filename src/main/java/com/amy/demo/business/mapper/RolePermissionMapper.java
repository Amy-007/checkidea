package com.amy.demo.business.mapper;

import com.amy.demo.entity.RolePermission;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface RolePermissionMapper extends BaseMapper<RolePermission>{

    List<String> getPermissionIdsByRoleId(String roleId);

    List<String> getPermissionIdsByRoles(List<String> roleIds);

    int removeByRoleId(String roleId);

    int batchRolePermission(List<RolePermission> list);

    int removeByPermissionId(String permissionId);

    List<String> getRoleIds(String permissionId);
}

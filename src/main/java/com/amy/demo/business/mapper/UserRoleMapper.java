package com.amy.demo.business.mapper;

import com.amy.demo.entity.UserRole;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface UserRoleMapper extends BaseMapper<UserRole>{

    List<String> getRoleIdsByUserId(String userId);

    List<String> getInfoByUserIdByRoleId(String roleId);

    List<String> getUserIdsByRoleIds(List<String> roleIds);

    int batchUserRole(List<UserRole> list);

    int removeByUserId(String userId);
}

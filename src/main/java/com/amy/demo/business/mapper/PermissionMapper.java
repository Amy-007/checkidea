package com.amy.demo.business.mapper;

import com.amy.demo.entity.Permission;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface PermissionMapper extends BaseMapper<Permission>{

    List<Permission> selectInfoByIds (List<String> ids);

    List<Permission> selectChild(String pid);

}

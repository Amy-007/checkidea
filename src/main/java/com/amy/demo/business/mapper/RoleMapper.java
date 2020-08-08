package com.amy.demo.business.mapper;

import com.amy.demo.entity.Role;
import com.amy.demo.vo.request.RolePageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface RoleMapper extends BaseMapper<Role>{


    List<Role> getRoleInfoByIds(List<String> ids);

    List<Role> selectAll(RolePageReqVO vo);
}

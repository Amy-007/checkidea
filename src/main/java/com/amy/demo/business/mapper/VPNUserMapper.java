package com.amy.demo.business.mapper;

import com.amy.demo.entity.Role;
import com.amy.demo.entity.User;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.vo.request.RolePageReqVO;
import com.amy.demo.vo.request.VPNUserPageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface VPNUserMapper extends BaseMapper<VPNUser>{

    List<VPNUser> selectAll(VPNUserPageReqVO vo);

    int deletedUsers(@Param("list") List<String> list);

}

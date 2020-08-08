package com.amy.demo.business.mapper;

import com.amy.demo.entity.User;
import com.amy.demo.vo.request.UserPageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface UserMapper extends BaseMapper<User>{

    /**
     * 通过用户名获取用户信息
     * @param username 用户名
     * @return
     */
    User getUserInfoByName(String username);

    List<User> selectAll(UserPageReqVO vo);

    List<User> selectUserInfoByDeptIds (List<String> deptIds);

    List<User> getUserListByDeptId(String deptId);


    int deletedUsers(@Param("sysUser") User sysUser, @Param("list") List<String> list);
}

package com.amy.demo.business.service;

import com.amy.demo.entity.User;
import com.amy.demo.vo.request.*;
import com.amy.demo.vo.response.HomeRespVO;
import com.amy.demo.vo.response.LoginRespVO;
import com.amy.demo.vo.response.PageVO;
import com.amy.demo.vo.response.UserOwnRoleRespVO;
import org.springframework.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


public interface UserService {

    /**
     * 用户登录接口
     * @param vo
     * @return
     */
    LoginRespVO login(LoginReqVO vo);

    void logout(String accessToken,String refreshToken);

    User detailInfo(String userId);

    HomeRespVO getHomeInfo(String userId);

    String refreshToken(String refreshToken,String accessToken);

    PageVO<User> pageInfo(UserPageReqVO vo);

    void addUser(UserAddReqVO vo);

    void updateUserInfo(UserUpdateReqVO vo, String operationId);

    void setUserOwnRole(String userId, List<String> roleIds, HttpServletRequest request);

    void deletedUsers(List<String> userIds,String operationId);

    UserOwnRoleRespVO getUserOwnRole(String userId, HttpServletRequest request);

    List<User> getUserListByDeptIds(List<String> deptIds);

    PageVO<User> selectUserInfoByDeptIds(int pageNum, int pageSize,List<String> deptIds);

    void updatePwd(UpdatePasswordReqVO vo, String userId, String accessToken, String refreshToken);

}

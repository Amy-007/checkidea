package com.amy.demo.business.service;

import com.amy.demo.entity.User;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.vo.request.*;
import com.amy.demo.vo.response.PageVO;

import java.util.List;


public interface VPNUserService {

    PageVO<VPNUser> pageInfo(VPNUserPageReqVO vo);

    void deletedUsers(List<String> userIds);

    void addUser(VPNUserAddReqVO vo);

    void updateUserInfo(VPNUserUpdateReqVO vo);
}

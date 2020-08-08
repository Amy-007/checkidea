package com.amy.demo.business.service;

import com.amy.demo.entity.Dept;
import com.amy.demo.entity.User;
import com.amy.demo.vo.request.DeptAddReqVO;
import com.amy.demo.vo.request.DeptPageReqVO;
import com.amy.demo.vo.request.DeptUpdateReqVO;
import com.amy.demo.vo.request.UserPageUserByDeptReqVO;
import com.amy.demo.vo.response.DeptRespNodeVO;
import com.amy.demo.vo.response.PageVO;

import java.util.List;


public interface DeptService {

    Dept detailInfo(String id);

    List<DeptRespNodeVO> deptTreeList(String deptId);

    Dept addDept(DeptAddReqVO vo);

    void updateDept(DeptUpdateReqVO vo);

    void deleted(String id);

    PageVO<Dept> pageInfo(DeptPageReqVO vo);

    PageVO<User> pageDeptUserInfo(UserPageUserByDeptReqVO vo);

    List<Dept> selectAlls();
}

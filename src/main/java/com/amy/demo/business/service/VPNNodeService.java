package com.amy.demo.business.service;

import com.amy.demo.entity.VPNNode;
import com.amy.demo.vo.request.VPNNodeAddReqVO;
import com.amy.demo.vo.request.VPNNodePageReqVO;
import com.amy.demo.vo.request.VPNNodeUpdateReqVO;
import com.amy.demo.vo.response.PageVO;

import java.util.List;


public interface VPNNodeService {
    PageVO<VPNNode> pageInfo(VPNNodePageReqVO vo);

    void deletedNodes(List<String> nodeIds);

    void updateUserInfo(VPNNodeUpdateReqVO vo);

    void addUser(VPNNodeAddReqVO vo);
}

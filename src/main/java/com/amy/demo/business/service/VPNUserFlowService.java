package com.amy.demo.business.service;

import com.amy.demo.entity.VPNUserFlow;
import com.amy.demo.vo.request.VPNUserFlowPageReqVO;
import com.amy.demo.vo.request.VPNUserFlowUpdateReqVO;
import com.amy.demo.vo.response.PageVO;


public interface VPNUserFlowService {
    PageVO<VPNUserFlow> pageInfo(VPNUserFlowPageReqVO vo);

    void updateUserInfo(VPNUserFlowUpdateReqVO vo);
}

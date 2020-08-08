package com.amy.demo.business.service.impl;

import com.github.pagehelper.PageHelper;
import com.amy.demo.business.mapper.VPNUserFlowMapper;
import com.amy.demo.business.service.VPNUserFlowService;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.entity.VPNUserFlow;
import com.amy.demo.enums.BaseResponseCode;
import com.amy.demo.exceptions.BusinessException;
import com.amy.demo.utils.PageUtils;
import com.amy.demo.vo.request.VPNUserFlowPageReqVO;
import com.amy.demo.vo.request.VPNUserFlowUpdateReqVO;
import com.amy.demo.vo.response.PageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
public class VPNUserFlowServiceImpl implements VPNUserFlowService {

    @Autowired
    private VPNUserFlowMapper vpnUserFlowMapper;

    @Override
    public PageVO<VPNUserFlow> pageInfo(VPNUserFlowPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<VPNUserFlow> vpnUserFlows = vpnUserFlowMapper.selectAll(vo);
        return PageUtils.getPageVO(vpnUserFlows);
    }

    @Override
    public void updateUserInfo(VPNUserFlowUpdateReqVO vo) {
        VPNUserFlow vpnUserFlow = new VPNUserFlow();
        BeanUtils.copyProperties(vo,vpnUserFlow);
        int count = vpnUserFlowMapper.updateByPrimaryKeySelective(vpnUserFlow);
        if (count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }
}

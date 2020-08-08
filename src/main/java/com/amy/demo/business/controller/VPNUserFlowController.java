package com.amy.demo.business.controller;

import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.service.VPNUserFlowService;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.entity.VPNUserFlow;
import com.amy.demo.utils.DataResult;
import com.amy.demo.vo.request.VPNUserFlowPageReqVO;
import com.amy.demo.vo.request.VPNUserFlowUpdateReqVO;
import com.amy.demo.vo.request.VPNUserPageReqVO;
import com.amy.demo.vo.request.VPNUserUpdateReqVO;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@Api(tags = "VPN管理模块-流量管理")
@RequestMapping("/sys")
@RestController
public class VPNUserFlowController {

    @Autowired
    private VPNUserFlowService vpnUserFlowService;

    @PostMapping("/vpnuserflows")
    @ApiOperation(value = "分页获取VPN用户流量信息接口")
    @LogAnnotation(title = "VPN用户流量管理",action = "分页获取VPN用户流量信息")
    @RequiresPermissions("sys:vpnuserflow:list")
    public DataResult<PageVO<VPNUserFlow>> pageInfo(@RequestBody VPNUserFlowPageReqVO vo){
        DataResult<PageVO<VPNUserFlow>> result=DataResult.success();
        result.setData(vpnUserFlowService.pageInfo(vo));
        return result;
    }

    @PutMapping("/vpnuserflow")
    @ApiOperation(value = "更新VPN用户流量信息接口")
    @LogAnnotation(title = "VPN管理",action = "更新VPN用户流量信息")
    @RequiresPermissions("sys:vpnuserflow:update")
    public DataResult updateUserInfo(@RequestBody @Valid VPNUserFlowUpdateReqVO vo){
        System.out.println(vo.toString());
        vpnUserFlowService.updateUserInfo(vo);
        return DataResult.success();
    }
}

package com.amy.demo.business.controller;

import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.service.VPNNodeService;
import com.amy.demo.entity.VPNNode;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.utils.DataResult;
import com.amy.demo.vo.request.*;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


@Api(tags = "VPN管理模块-节点管理")
@RequestMapping("/sys")
@RestController
public class VPNNodeController {

    @Autowired
    private VPNNodeService vpnNodeService;

    @PostMapping("/vpnnode")
    @ApiOperation(value = "分页获取VPN节点信息接口")
    @LogAnnotation(title = "VPN角色管理",action = "分页获取VPN节点信息")
    @RequiresPermissions("sys:vpnnode:list")
    public DataResult<PageVO<VPNNode>> pageInfo(@RequestBody VPNNodePageReqVO vo){
        DataResult<PageVO<VPNNode>> result=DataResult.success();
        result.setData(vpnNodeService.pageInfo(vo));
        return result;
    }

    @DeleteMapping("/vpnnode")
    @ApiOperation(value = "删除VPN节点接口")
    @LogAnnotation(title = "VPN管理",action = "删除VPN节点")
    @RequiresPermissions("sys:vpnnode:deleted")
    public DataResult deletedVPNUser(@RequestBody @ApiParam(value = "节点id集合") List<String> nodeIds){
        vpnNodeService.deletedNodes(nodeIds);
        return DataResult.success();
    }

    @PutMapping("/vpnnode")
    @ApiOperation(value = "更新VPN节点信息接口")
    @LogAnnotation(title = "VPN管理",action = "更新VPN节点信息")
    @RequiresPermissions("sys:vpnnode:update")
    public DataResult updateUserInfo(@RequestBody @Valid VPNNodeUpdateReqVO vo){
        System.out.println(vo.toString());
        vpnNodeService.updateUserInfo(vo);
        return DataResult.success();
    }

    @PostMapping("/vpnnodeadd")
    @ApiOperation(value = "新增VPN节点接口")
    @RequiresPermissions("sys:vpnnode:add")
    @LogAnnotation(title = "VPN管理",action = "新增VPN节点")
    public DataResult addNode(@RequestBody @Valid VPNNodeAddReqVO vo){
        vpnNodeService.addUser(vo);
        return DataResult.success();
    }
}

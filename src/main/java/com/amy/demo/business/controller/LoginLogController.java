package com.amy.demo.business.controller;

import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.service.LoginLogService;
import com.amy.demo.entity.LoginLog;
import com.amy.demo.utils.DataResult;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.request.LoginLogPageReqVO;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RequestMapping("/sys")
@RestController
@Api(tags = "系统模块-登录日志")
public class LoginLogController {

    @Autowired
    private LoginLogService loginLogService;

    @PostMapping("/loginlogs")
    @ApiOperation(value = "分页查询系统登录日志接口")
    @LogAnnotation(title = "系统操作登录日志管理",action = "分页查询系统登录日志")
    @RequiresPermissions("sys:loginlog:list")
    public DataResult<PageVO<LoginLog>> pageInfo(@RequestBody LoginLogPageReqVO vo) {
        PageVO<LoginLog> sysLogPageVO = loginLogService.pageInfo(vo);
        DataResult<PageVO<LoginLog>> result = DataResult.success();
        result.setData(sysLogPageVO);
        return result;
    }

    @DeleteMapping("/loginlogs")
    @ApiOperation(value = "删除登录日志接口")
    @LogAnnotation(title = "系统登录日志管理",action = "删除系统登录日志")
    @RequiresPermissions("sys:loginlog:deleted")
    public DataResult deleted(@RequestBody List<String> logIds){
        loginLogService.deleted(logIds);
        return DataResult.success();
    }
}

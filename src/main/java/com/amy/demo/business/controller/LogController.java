package com.amy.demo.business.controller;

import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.service.LogService;
import com.amy.demo.entity.Log;
import com.amy.demo.utils.DataResult;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RequestMapping("/sys")
@Api(tags = "系统模块-系统操作日志管理")
@RestController
public class LogController {

    @Autowired
    private LogService logService;

    @PostMapping("/logs")
    @ApiOperation(value = "分页查询系统操作日志接口")
    @LogAnnotation(title = "系统操作日志管理",action = "分页查询系统操作日志")
    @RequiresPermissions("sys:log:list")
    public DataResult<PageVO<Log>> pageInfo(@RequestBody LogPageReqVO vo){
        PageVO<Log> sysLogPageVO = logService.pageInfo(vo);
        DataResult<PageVO<Log>> result= DataResult.success();
        result.setData(sysLogPageVO);
        return result;
    }

    @DeleteMapping("/logs")
    @ApiOperation(value = "删除日志接口")
    @LogAnnotation(title = "系统操作日志管理",action = "删除系统操作日志")
    @RequiresPermissions("sys:log:deleted")
    public DataResult deleted(@RequestBody List<String> logIds){
        logService.deleted(logIds);
        return DataResult.success();
    }

}

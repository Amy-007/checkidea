package com.amy.demo.business.controller;

import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.service.LoginLogService;
import com.amy.demo.entity.ChartBean;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.utils.DataResult;
import com.amy.demo.vo.request.VPNUserPageReqVO;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RequestMapping("/sys")
@RestController
@Api(tags = "首页")
public class MainController {

    @Autowired
    private LoginLogService loginLogService;

    @PostMapping("/main")
    @ApiOperation(value = "首页获取图表信息接口")
    @LogAnnotation(title = "V首页",action = "首页获取图表信息接口")
    public DataResult<ChartBean> getChart(){
        DataResult<ChartBean> result=DataResult.success();
        result.setData(loginLogService.getCharData());
        System.out.println(result.toString());
        return result;
    }
}

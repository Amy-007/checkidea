package com.amy.demo.business.service.impl;

import com.github.pagehelper.PageHelper;
import com.amy.demo.aop.annotation.LogAnnotation;
import com.amy.demo.business.mapper.LoginLogMapper;
import com.amy.demo.business.service.LoginLogService;
import com.amy.demo.entity.ChartBean;
import com.amy.demo.entity.LoginLog;
import com.amy.demo.utils.DataResult;
import com.amy.demo.utils.PageUtils;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.request.LoginLogPageReqVO;
import com.amy.demo.vo.response.NameAndCntVO;
import com.amy.demo.vo.response.PageVO;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;


@Service
@Slf4j
public class LoginLogServiceImpl implements LoginLogService {

    @Autowired
    private LoginLogMapper loginLogMapper;


    @Override
    public PageVO<LoginLog> pageInfo(LoginLogPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(), vo.getPageSize());
        List<LoginLog> loginLogs = loginLogMapper.selectAll(vo);
        return PageUtils.getPageVO(loginLogs);
    }

    @Override
    public void deleted(List<String> logIds) {
        loginLogMapper.batchDeletedLog(logIds);
    }

    @Override
    public ChartBean getCharData() {
        int totalSuccessLoginCnt = loginLogMapper.getTotalSuccessLoginCnt();
        int todaySuccessLoginCnt = loginLogMapper.getTodaySuccessLoginCnt();
        int weekSuccessLoginCnt = loginLogMapper.getWeekSuccessLoginCnt();
        int todayFailLoginCnt = loginLogMapper.getTodayFailLoginCnt();
        int totalFailLoginCnt = loginLogMapper.getTotalFailLoginCnt();
        float resourceRate = (float) (new Random(System.currentTimeMillis()).nextInt(80) + 20) / 100;

        List<NameAndCntVO> dateAndCntList = loginLogMapper.getDateAndCntList();
        List<String> dateNameList = new ArrayList<>();
        List<Integer> loginCntList = new ArrayList<>();
        for (NameAndCntVO nameAndCntVO : dateAndCntList) {
            dateNameList.add(nameAndCntVO.getDate7());
            loginCntList.add(nameAndCntVO.getSuccessLoginCnt());
        }
        ChartBean bean = new ChartBean();
        bean.setTotalSuccessLoginCnt(totalSuccessLoginCnt);
        bean.setTodaySuccessLoginCnt(todaySuccessLoginCnt);
        bean.setWeekSuccessLoginCnt(weekSuccessLoginCnt);
        bean.setTodayFailLoginCnt(todayFailLoginCnt);
        bean.setTotalFailLoginCnt(totalFailLoginCnt);
        bean.setResourceRate(resourceRate);
        Collections.reverse(dateNameList);
        Collections.reverse(loginCntList);
        bean.setDateNameList(dateNameList);
        bean.setLoginCntList(loginCntList);
        return bean;
    }
}

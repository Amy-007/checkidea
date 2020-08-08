package com.amy.demo.business.service;

import com.amy.demo.entity.ChartBean;
import com.amy.demo.entity.LoginLog;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.request.LoginLogPageReqVO;
import com.amy.demo.vo.response.PageVO;

import java.util.List;


public interface LoginLogService {

    PageVO<LoginLog> pageInfo(LoginLogPageReqVO vo);

    void deleted(List<String> logIds);

    ChartBean getCharData();
}

package com.amy.demo.business.service;

import com.amy.demo.entity.Log;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.response.PageVO;

import java.util.List;

public interface LogService {

    PageVO<Log> pageInfo(LogPageReqVO vo);

    void deleted(List<String> logIds);
}

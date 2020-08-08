package com.amy.demo.business.service.impl;

import com.github.pagehelper.PageHelper;
import com.amy.demo.business.mapper.LogMapper;
import com.amy.demo.business.service.LogService;
import com.amy.demo.entity.Log;
import com.amy.demo.utils.PageUtils;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.response.PageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper sysLogMapper;

    @Override
    public PageVO<Log> pageInfo(LogPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<Log> sysLogs = sysLogMapper.selectAll(vo);
        return PageUtils.getPageVO(sysLogs);
    }

    @Override
    public void deleted(List<String> logIds) {
        sysLogMapper.batchDeletedLog(logIds);
    }
}

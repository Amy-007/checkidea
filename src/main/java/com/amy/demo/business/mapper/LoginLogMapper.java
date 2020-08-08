package com.amy.demo.business.mapper;

import com.amy.demo.entity.LoginLog;
import com.amy.demo.vo.request.LogPageReqVO;
import com.amy.demo.vo.request.LoginLogPageReqVO;
import com.amy.demo.vo.response.NameAndCntVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface LoginLogMapper extends BaseMapper<LoginLog>{

    int saveLoginLog(LoginLog log);

    List<LoginLog> selectAll(LoginLogPageReqVO vo);

    void batchDeletedLog(List<String> logIds);

    int getTotalSuccessLoginCnt();

    int getTodaySuccessLoginCnt();

    int getWeekSuccessLoginCnt();

    int getTodayFailLoginCnt();

    int getTotalFailLoginCnt();

    List<NameAndCntVO> getDateAndCntList();

}

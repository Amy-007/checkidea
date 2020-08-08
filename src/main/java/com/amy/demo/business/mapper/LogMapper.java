package com.amy.demo.business.mapper;

import com.amy.demo.entity.Log;
import com.amy.demo.vo.request.LogPageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface LogMapper extends BaseMapper<Log>{

    void batchDeletedLog(List<String> logIds);

    List<Log> selectAll(LogPageReqVO vo);
}

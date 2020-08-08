package com.amy.demo.business.mapper;

import com.amy.demo.entity.VPNUserFlow;
import com.amy.demo.vo.request.VPNUserFlowPageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface VPNUserFlowMapper extends BaseMapper<VPNUserFlow>{

    List<VPNUserFlow> selectAll(VPNUserFlowPageReqVO vo);

}

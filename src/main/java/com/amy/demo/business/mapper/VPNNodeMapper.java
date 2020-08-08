package com.amy.demo.business.mapper;

import com.amy.demo.entity.VPNNode;
import com.amy.demo.vo.request.VPNNodePageReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface VPNNodeMapper extends BaseMapper<VPNNode>{
    List<VPNNode> selectAll(VPNNodePageReqVO vo);

    int deletedNodes(List<String> nodeIds);

}

package com.amy.demo.vo.request;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;


@Data
public class VPNUserFlowPageReqVO {

    @ApiModelProperty(value = "第几页")
    private int pageNum=1;

    @ApiModelProperty(value = "分页数量")
    private int pageSize=10;

    @ApiModelProperty(value = "用户id")
    private String userId;

    @ApiModelProperty(value = "账号")
    private String username;

    @ApiModelProperty(value = "信用等级")
    private String credit;
}

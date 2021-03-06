package com.amy.demo.entity;

import lombok.Data;

import java.util.List;

@Data
public class ChartBean {

    private Integer totalSuccessLoginCnt; //总的成功登录人数 UV

    private Integer todaySuccessLoginCnt; //今日成功登录数 UV

    private Integer weekSuccessLoginCnt; //近一周成功登录数 UV

    private Integer todayFailLoginCnt; //今日失败登录数 PV

    private Integer totalFailLoginCnt; //总的失败登录数 PV

    private Float resourceRate;//剩余资源百分比

    private List<String> dateNameList; //过去一周日期名字

    private List<Integer> loginCntList;//过去一周登录人数列表


}

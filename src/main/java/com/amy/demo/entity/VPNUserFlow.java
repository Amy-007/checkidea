package com.amy.demo.entity;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.security.SecureRandom;


@Table(name = "vpn_user_flow")
public class VPNUserFlow {

    @Id
    private String id;

    private String username;

    private Integer credit;

    private Integer connect;

    private Integer money;

    private Integer flow;

    private Integer maxUp;

    private Integer maxDown;

    private Integer deleted;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Integer getConnect() {
        return connect;
    }

    public void setConnect(Integer connect) {
        this.connect = connect;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getFlow() {
        return flow;
    }

    public void setFlow(Integer flow) {
        this.flow = flow;
    }

    public Integer getMaxUp() {
        return maxUp;
    }

    public void setMaxUp(Integer maxUp) {
        this.maxUp = maxUp;
    }

    public Integer getMaxDown() {
        return maxDown;
    }

    public void setMaxDown(Integer maxDown) {
        this.maxDown = maxDown;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}

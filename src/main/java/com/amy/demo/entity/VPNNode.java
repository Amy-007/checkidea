package com.amy.demo.entity;


import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;



@Table(name = "vpn_node")
public class VPNNode {

    @Id
    private Integer id;

    private String node;

    private String ip;

    private Integer port;

    private Date createTime;

    private String protocol;

    private Integer status;

    private Integer maxUp;

    private Integer maxDown;

    private Integer delay;

    private String link;

    private Integer deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNode() {
        return node;
    }

    public void setNode(String node) {
        this.node = node;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Integer getPort() {
        return port;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getProtocol() {
        return protocol;
    }

    public void setProtocol(String protocol) {
        this.protocol = protocol;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    public Integer getDelay() {
        return delay;
    }

    public void setDelay(Integer delay) {
        this.delay = delay;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
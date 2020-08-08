package com.amy.demo.vo.response;

import com.amy.demo.entity.Role;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;


@Data
public class UserOwnRoleRespVO {

    @ApiModelProperty("所有角色集合")
    private List<Role> allRole;
    @ApiModelProperty(value = "用户所拥有角色集合")
    private List<String> ownRoles;
}

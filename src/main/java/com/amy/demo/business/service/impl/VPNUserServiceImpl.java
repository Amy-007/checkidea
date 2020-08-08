package com.amy.demo.business.service.impl;

import com.github.pagehelper.PageHelper;
import com.amy.demo.business.mapper.VPNUserMapper;
import com.amy.demo.business.service.VPNUserService;
import com.amy.demo.constant.Constant;
import com.amy.demo.entity.Dept;
import com.amy.demo.entity.User;
import com.amy.demo.entity.VPNUser;
import com.amy.demo.enums.BaseResponseCode;
import com.amy.demo.exceptions.BusinessException;
import com.amy.demo.utils.PageUtils;
import com.amy.demo.utils.PasswordUtil;
import com.amy.demo.vo.request.UserRoleOperationReqVO;
import com.amy.demo.vo.request.VPNUserAddReqVO;
import com.amy.demo.vo.request.VPNUserPageReqVO;
import com.amy.demo.vo.request.VPNUserUpdateReqVO;
import com.amy.demo.vo.response.PageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Service
@Slf4j
public class VPNUserServiceImpl implements VPNUserService {

    @Autowired
    private VPNUserMapper vpnUserMapper;

    @Override
    public PageVO<VPNUser> pageInfo(VPNUserPageReqVO vo) {

        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<VPNUser> vpnUsers = vpnUserMapper.selectAll(vo);
        return PageUtils.getPageVO(vpnUsers);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deletedUsers(List<String> userIds) {
        int i = vpnUserMapper.deletedUsers(userIds);
        if(i == 0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }

    @Override
    public void addUser(VPNUserAddReqVO vo) {
        Calendar calendar =Calendar.getInstance();
        VPNUser vpnUser =new VPNUser();
        BeanUtils.copyProperties(vo,vpnUser);
        vpnUser.setEmail(vo.getEmail());
        vpnUser.setId(UUID.randomUUID().toString());
        vpnUser.setCreateTime(new Date());
        calendar.setTime(new Date());
        calendar.add(calendar.YEAR,1);
        vpnUser.setExpirationTime(calendar.getTime());
        vpnUser.setLastLogin(new Date());
        vpnUser.setLevel(vo.getLevel());
        vpnUser.setStatus(vo.getStatus());
        vpnUser.setDeleted(1);
        int i = vpnUserMapper.insertSelective(vpnUser);
        if (i!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }

    @Override
    public void updateUserInfo(VPNUserUpdateReqVO vo) {
        VPNUser vpnUser = vpnUserMapper.selectByPrimaryKey(vo.getId());
        if (null==vpnUser){
            log.error("传入 的 id:{}不合法",vo.getId());
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        BeanUtils.copyProperties(vo,vpnUser);

        int count= vpnUserMapper.updateByPrimaryKeySelective(vpnUser);
        if (count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }

    }

}

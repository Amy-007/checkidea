package com.amy.demo.business.service.impl;

import com.github.pagehelper.PageHelper;
import com.amy.demo.business.mapper.DeptMapper;
import com.amy.demo.business.service.DeptService;
import com.amy.demo.business.service.RedisService;
import com.amy.demo.business.service.UserService;
import com.amy.demo.constant.Constant;
import com.amy.demo.entity.Dept;
import com.amy.demo.entity.User;
import com.amy.demo.enums.BaseResponseCode;
import com.amy.demo.exceptions.BusinessException;
import com.amy.demo.utils.CodeUtil;
import com.amy.demo.utils.PageUtils;
import com.amy.demo.vo.request.DeptAddReqVO;
import com.amy.demo.vo.request.DeptPageReqVO;
import com.amy.demo.vo.request.DeptUpdateReqVO;
import com.amy.demo.vo.request.UserPageUserByDeptReqVO;
import com.amy.demo.vo.response.DeptRespNodeVO;
import com.amy.demo.vo.response.PageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Service
@Slf4j
public class DeptServiceImpl implements DeptService {

    @Autowired
    private RedisService redisService;

    @Autowired
    private DeptMapper deptMapper;

    @Autowired
    @Lazy
    private UserService userService;

    @Override
    public Dept addDept(DeptAddReqVO vo) {
        System.out.println("fds");
        String relationCode;
        long result=redisService.incrby(Constant.DEPT_CODE_KEY,1);
        String deptCode= CodeUtil.deptCode(String.valueOf(result),6,"0");
        Dept parent=deptMapper.selectByPrimaryKey(vo.getPid());
        if(vo.getPid().equals("0")){
            relationCode=deptCode;
        }else if(null==parent) {
            log.error("传入的 pid:{}不合法",vo.getPid());
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }else {
            relationCode=parent.getRelationCode()+deptCode;
        }
        Dept Dept=new Dept();
        BeanUtils.copyProperties(vo,Dept);
        Dept.setCreateTime(new Date());
        Dept.setId(UUID.randomUUID().toString());
        Dept.setDeptNo(deptCode);
        Dept.setRelationCode(relationCode);
        int count=deptMapper.insertSelective(Dept);
        if (count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
        return Dept;
    }
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateDept(DeptUpdateReqVO vo) {

        Dept Dept=deptMapper.selectByPrimaryKey(vo.getId());
        if(null==Dept){
            log.error("传入 的 id:{}不合法",vo.getId());
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        Dept update=new Dept();
        BeanUtils.copyProperties(vo,update);
        update.setUpdateTime(new Date());
        int count=deptMapper.updateByPrimaryKeySelective(update);
        if(count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }

        /**
         * 说明层级发生了变化
         */
        if(!StringUtils.isEmpty(vo.getPid())&&!vo.getPid().equals(Dept.getPid())){
            Dept parent=deptMapper.selectByPrimaryKey(vo.getPid());
            if(!vo.getPid().equals("0")&&null==parent){
                log.error("传入 的 pid:{}不合法",vo.getId());
                throw new BusinessException(BaseResponseCode.DATA_ERROR);
            }
            Dept oldParent=deptMapper.selectByPrimaryKey(Dept.getPid());
            String oldRelationCode;
            String newRelationCode;
            /**
             * 根目录降到其他目录
             */
            if (Dept.getPid().equals("0")){
                oldRelationCode=Dept.getDeptNo();
                newRelationCode=parent.getRelationCode()+Dept.getDeptNo();
            }else if(vo.getPid().equals("0")){//其他目录升级到跟目录
                oldRelationCode=Dept.getRelationCode();
                newRelationCode=Dept.getDeptNo();
            }else {
                oldRelationCode=oldParent.getRelationCode();
                newRelationCode=parent.getRelationCode();
            }
            deptMapper.updateRelationCode(oldRelationCode,newRelationCode,Dept.getRelationCode());
        }
    }
    @Override
    public void deleted(String id) {
        Dept Dept=deptMapper.selectByPrimaryKey(id);
        if (null==Dept){
            log.error("传入 的 id:{}不合法",id);
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        List<String> deptIds = deptMapper.selectChildIds(Dept.getRelationCode());
        List<User> list = userService.getUserListByDeptIds(deptIds);
        if(!list.isEmpty()){
            throw new BusinessException(BaseResponseCode.NOT_PERMISSION_DELETED_DEPT);
        }
        Dept.setDeleted(0);
        Dept.setUpdateTime(new Date());
        int count=deptMapper.updateByPrimaryKeySelective(Dept);
        if (count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }
    @Override
    public PageVO<Dept> pageInfo(DeptPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<Dept> Depts = deptMapper.selectAlls();
        return PageUtils.getPageVO(Depts);
    }
    @Override
    public PageVO<User> pageDeptUserInfo(UserPageUserByDeptReqVO vo) {

        Dept Dept=deptMapper.selectByPrimaryKey(vo.getDeptId());
        if (null==Dept){
            log.error("传入 的 id:{}不合法",vo.getDeptId());
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        List<String> strings = deptMapper.selectChildIds(Dept.getRelationCode());

        return userService.selectUserInfoByDeptIds(vo.getPageNum(), vo.getPageSize(),strings);
    }

    @Override
    public List<Dept> selectAlls() {
        List<Dept> list = deptMapper.selectAlls();
        for (Dept Dept:list){
            Dept parent = deptMapper.selectByPrimaryKey(Dept.getPid());
            if(parent!=null){
                Dept.setPidName(parent.getName());
            }
        }
        return list;
    }
    
    @Override
    public Dept detailInfo(String id) {
        return deptMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<DeptRespNodeVO> deptTreeList(String deptId) {
        List<Dept> list;
        if(StringUtils.isEmpty(deptId)){
            list=deptMapper.selectAlls();
        }else {
            Dept Dept = deptMapper.selectByPrimaryKey(deptId);
            if (Dept==null){
                throw new BusinessException(BaseResponseCode.DATA_ERROR);
            }
            List<String> childIds = deptMapper.selectChildIds(Dept.getRelationCode());
            list=deptMapper.selectAllByNotContainChild(childIds);
        }
        //默认加一个顶级方便新增顶级部门
        DeptRespNodeVO respNodeVO=new DeptRespNodeVO();
        respNodeVO.setTitle("总部");
        respNodeVO.setId("0");
        respNodeVO.setSpread(true);
        respNodeVO.setChildren(getTree(list));
        List<DeptRespNodeVO> result=new ArrayList<>();
        result.add(respNodeVO);
        return result;
    }

    private List<DeptRespNodeVO> getTree(List<Dept> all){
        List<DeptRespNodeVO> list=new ArrayList<>();
        for(Dept Dept:all){
            if(Dept.getPid().equals("0")){
                DeptRespNodeVO deptTree=new DeptRespNodeVO();
                BeanUtils.copyProperties(Dept,deptTree);
                deptTree.setTitle(Dept.getName());
                deptTree.setSpread(true);
                deptTree.setChildren(getChild(Dept.getId(),all));
                list.add(deptTree);
            }
        }
        return list;
    }

    private List<DeptRespNodeVO>getChild(String id, List<Dept> all){
        List<DeptRespNodeVO> list=new ArrayList<>();
        for(Dept Dept:all){
            if(Dept.getPid().equals(id)){
                DeptRespNodeVO deptTree=new DeptRespNodeVO();
                BeanUtils.copyProperties(Dept,deptTree);
                deptTree.setTitle(Dept.getName());
                deptTree.setChildren(getChild(Dept.getId(),all));
                list.add(deptTree);
            }
        }
        return list;
    }
}

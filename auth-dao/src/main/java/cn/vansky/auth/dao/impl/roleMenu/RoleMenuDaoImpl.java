/*
 * Copyright (C) 2015 CK, Inc. All Rights Reserved.
 */

package cn.vansky.auth.dao.impl.roleMenu;

import cn.vansky.auth.bo.roleMenu.RoleMenu;
import cn.vansky.auth.dao.roleMenu.RoleMenuDao;
import cn.vansky.auth.dao.roleMenu.RoleMenuMapper;
import cn.vansky.framework.core.dao.ConfigurableBaseSqlMapDao;
import cn.vansky.framework.core.dao.DaoMapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.Map;

/**
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table tb_role_menu
 *
 * @mbggenerated 2015-09-05 14:06:23
 */
@Repository("roleMenuDao")
public class RoleMenuDaoImpl extends ConfigurableBaseSqlMapDao<RoleMenu, Integer> implements RoleMenuDao {
    @Autowired
    private RoleMenuMapper roleMenuMapper;

    @Override
    public DaoMapper<RoleMenu, Integer> getDaoMapper() {
        return roleMenuMapper;
    }

    @Resource(name = "sqlSessionFactory")
    @Override
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        setSqlSessionFactoryInternal(sqlSessionFactory);
    }

    @Override
    public void delMenu(Map<String, Object> params) {
        roleMenuMapper.delMenu(params);
    }
}
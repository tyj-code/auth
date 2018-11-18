/*
 * Copyright (C) 2015 CK, Inc. All Rights Reserved.
 */

package cn.vansky.auth.dao.impl.menu;

import cn.vansky.auth.bo.menu.Menu;
import cn.vansky.auth.dao.menu.MenuDao;
import cn.vansky.auth.dao.menu.MenuMapper;
import cn.vansky.auth.dto.menu.MenuAuthDto;
import cn.vansky.auth.dto.menu.MenuDto;
import cn.vansky.framework.core.dao.ConfigurableBaseSqlMapDao;
import cn.vansky.framework.core.dao.DaoMapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table tb_menu
 *
 * @mbggenerated 2015-09-05 14:06:23
 */
@Repository("menuDao")
public class MenuDaoImpl extends ConfigurableBaseSqlMapDao<Menu, Integer> implements MenuDao {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public DaoMapper<Menu, Integer> getDaoMapper() {
        return menuMapper;
    }

    @Resource(name = "sqlSessionFactory")
    @Override
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        setSqlSessionFactoryInternal(sqlSessionFactory);
    }

    @Override
    public List<MenuDto> findPageList(Map<String, Object> params) {
        return menuMapper.findPageList(params);
    }

    @Override
    public List<MenuAuthDto> findRoleMenu(Map<String, Object> params) {
        return menuMapper.findRoleMenu(params);
    }

    @Override
    public List<Menu> findByRoleId(Integer roleId, Integer systemId) {
        return menuMapper.findByRoleId(roleId, systemId);
    }

    @Override
    public List<Menu> findByUserId(Integer userId, Integer systemId) {
        return menuMapper.findByUserId(userId, systemId);
    }
}
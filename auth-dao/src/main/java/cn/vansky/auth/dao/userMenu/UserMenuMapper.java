/*
 * Copyright (C) 2015 CK, Inc. All Rights Reserved.
 */

package cn.vansky.auth.dao.userMenu;

import cn.vansky.auth.bo.userMenu.UserMenu;
import cn.vansky.framework.core.dao.DaoMapper;
import cn.vansky.framework.core.orm.mybatis.annotation.SqlMapper;

import java.util.Map;

/**
 * This class was generated by MyBatis Generator.
 * This class corresponds to the database table tb_user_menu
 *
 * @mbggenerated 2015-09-05 14:06:23
 */
@SqlMapper
public interface UserMenuMapper extends DaoMapper<UserMenu, Integer> {
    void delMenu(Map<String, Object> params);
}
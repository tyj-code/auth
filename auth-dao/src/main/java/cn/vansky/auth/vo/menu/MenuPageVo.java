package cn.vansky.auth.vo.menu;

import cn.vansky.auth.bo.menu.Menu;
import cn.vansky.auth.dto.menu.MenuDto;
import cn.vansky.framework.core.vo.BaseVo;

/**
 * Created by IntelliJ IDEA .
 * Auth: CK
 * Date: 2016/5/20
 */
public class MenuPageVo extends BaseVo<MenuDto> {
    private String name;
    private Integer dicType = 3;
    private Integer systemId;
    private Integer roleId;
    private Integer no;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDicType() {
        return dicType;
    }

    public void setDicType(Integer dicType) {
        this.dicType = dicType;
    }

    public Integer getSystemId() {
        return systemId;
    }

    public void setSystemId(Integer systemId) {
        this.systemId = systemId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }
}

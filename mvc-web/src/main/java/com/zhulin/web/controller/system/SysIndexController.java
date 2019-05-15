package com.zhulin.web.controller.system;

import java.util.List;

import com.zhulin.common.page.TableDataInfo;
import com.zhulin.framework.util.ShiroUtils;
import com.zhulin.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import com.zhulin.common.config.Global;
import com.zhulin.system.domain.SysMenu;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.service.ISysMenuService;
import com.zhulin.framework.web.base.BaseController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 首页 业务处理
 * 
 * @author mvcboot
 */
@Controller
public class SysIndexController extends BaseController
{
    @Autowired
    private ISysMenuService menuService;
    @Autowired
    private ISysUserService userService;

    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap)
    {
        // 取身份信息
        SysUser user = getSysUser();
        // 根据用户id取出菜单
        List<SysMenu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("copyrightYear", Global.getCopyrightYear());
        return "index";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap, SysUser user)
    {

        mmap.put("version", Global.getVersion());

        return "main";
    }

    @PostMapping("/system/main/list")
    @ResponseBody
    public TableDataInfo list(SysUser user)
    {

        long deptId = Long.parseLong(String.valueOf(ShiroUtils.getDeptId()));
        long userId = ShiroUtils.getUserId();

        startPage();
        List<SysUser> list = userService.selectCommomUsers(deptId, user, userId );
        return getDataTable(list);
    }
}

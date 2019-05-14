package com.zhulin.web.controller.system;

import com.zhulin.common.page.TableDataInfo;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.service.ISysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/sys/user/score")
public class SysUserScoreController extends BaseController {

    private String prefix = "system/user/score";

    @Autowired
    private ISysUserService userService;

    @RequiresPermissions("system:user:score:view")
    @GetMapping()
    public String user()
    {
        return prefix + "/score";
    }

    @RequiresPermissions("system:user:score:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysUser user)
    {
        startPage();
        List<SysUser> list = userService.selectUserList(user);
        return getDataTable(list);
    }
}

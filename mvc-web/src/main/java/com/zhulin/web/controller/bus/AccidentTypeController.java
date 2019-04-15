package com.zhulin.web.controller.bus;

import com.zhulin.bus.domain.AccidentType;
import com.zhulin.bus.service.IAccidentTypeService;
import com.zhulin.common.annotation.Log;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.enums.BusinessType;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.utils.poi.ExcelUtil;
import com.zhulin.framework.util.ShiroUtils;
import com.zhulin.framework.web.base.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 事故类别管理 信息操作处理
 *
 * @author zhulin
 * @date 2019-04-10
 */
@Controller
@RequestMapping("/bus/accidentType")
public class AccidentTypeController extends BaseController
{
    private String prefix = "bus/accidentType";

    @Autowired
    private IAccidentTypeService accidentTypeService;

    @RequiresPermissions("bus:accidentType:view")
    @GetMapping()
    public String accidentType()
    {
        return prefix + "/list";
    }

    /**
     * 查询事故类别管理列表
     */
    @RequiresPermissions("bus:accidentType:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AccidentType accidentType)
    {
        startPage();
        List<AccidentType> list = accidentTypeService.selectAccidentTypeList(accidentType);
        return getDataTable(list);
    }


    /**
     * 导出事故类别管理列表
     */
    @RequiresPermissions("bus:accidentType:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AccidentType accidentType)
    {
        List<AccidentType> list = accidentTypeService.selectAccidentTypeList(accidentType);
        ExcelUtil<AccidentType> util = new ExcelUtil<AccidentType>(AccidentType.class);
        return util.exportExcel(list, "accidentType");
    }

    /**
     * 新增事故类别管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存事故类别管理
     */
    @RequiresPermissions("bus:accidentType:add")
    @Log(title = "事故类别管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AccidentType accidentType)
    {
        accidentType.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
        accidentType.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
        return toAjax(accidentTypeService.insertAccidentType(accidentType));
    }

    /**
     * 修改事故类别管理
     */
    @GetMapping("/edit/{accidentTypeId}")
    public String edit(@PathVariable("accidentTypeId") String accidentTypeId, ModelMap mmap)
    {
        AccidentType accidentType = accidentTypeService.selectAccidentTypeById(accidentTypeId);
        mmap.put("accidentType", accidentType);
        return prefix + "/edit";
    }

    /**
     * 修改保存事故类别管理
     */
    @RequiresPermissions("bus:accidentType:edit")
    @Log(title = "事故类别管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AccidentType accidentType)
    {
        accidentType.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
        return toAjax(accidentTypeService.updateAccidentType(accidentType));
    }

    /**
     * 删除事故类别管理
     */
    @RequiresPermissions("bus:accidentType:remove")
    @Log(title = "事故类别管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(accidentTypeService.deleteAccidentTypeByIds(ids));
    }
}

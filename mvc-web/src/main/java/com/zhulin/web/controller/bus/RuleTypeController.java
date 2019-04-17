package com.zhulin.web.controller.bus;

import java.util.List;

import com.zhulin.framework.util.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zhulin.common.annotation.Log;
import com.zhulin.common.enums.BusinessType;
import com.zhulin.bus.domain.RuleType;
import com.zhulin.bus.service.IRuleTypeService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 规则类型管理 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-17
 */
@Controller
@RequestMapping("/bus/ruleType")
public class RuleTypeController extends BaseController
{
    private String prefix = "bus/ruleType";
	
	@Autowired
	private IRuleTypeService ruleTypeService;
	
	@RequiresPermissions("bus:ruleType:view")
	@GetMapping()
	public String ruleType()
	{
	    return prefix + "/ruleType";
	}
	
	/**
	 * 查询规则类型管理列表
	 */
	@RequiresPermissions("bus:ruleType:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(RuleType ruleType)
	{
		startPage();
        List<RuleType> list = ruleTypeService.selectRuleTypeList(ruleType);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出规则类型管理列表
	 */
	@RequiresPermissions("bus:ruleType:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(RuleType ruleType)
    {
    	List<RuleType> list = ruleTypeService.selectRuleTypeList(ruleType);
        ExcelUtil<RuleType> util = new ExcelUtil<RuleType>(RuleType.class);
        return util.exportExcel(list, "ruleType");
    }
	
	/**
	 * 新增规则类型管理
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存规则类型管理
	 */
	@RequiresPermissions("bus:ruleType:add")
	@Log(title = "规则类型管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(RuleType ruleType)
	{
		ruleType.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
		ruleType.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(ruleTypeService.insertRuleType(ruleType));
	}

	/**
	 * 修改规则类型管理
	 */
	@GetMapping("/edit/{ruleTypeId}")
	public String edit(@PathVariable("ruleTypeId") String ruleTypeId, ModelMap mmap)
	{
		RuleType ruleType = ruleTypeService.selectRuleTypeById(ruleTypeId);
		mmap.put("ruleType", ruleType);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存规则类型管理
	 */
	@RequiresPermissions("bus:ruleType:edit")
	@Log(title = "规则类型管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(RuleType ruleType)
	{
		ruleType.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(ruleTypeService.updateRuleType(ruleType));
	}
	
	/**
	 * 删除规则类型管理
	 */
	@RequiresPermissions("bus:ruleType:remove")
	@Log(title = "规则类型管理", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(ruleTypeService.deleteRuleTypeByIds(ids));
	}
	
}

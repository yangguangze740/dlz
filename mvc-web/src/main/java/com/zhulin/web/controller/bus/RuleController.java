package com.zhulin.web.controller.bus;

import java.util.List;

import com.zhulin.bus.domain.RuleType;
import com.zhulin.bus.service.IRuleTypeService;
import com.zhulin.framework.util.ShiroUtils;
import com.zhulin.system.domain.SysDept;
import com.zhulin.system.service.ISysDeptService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.zhulin.common.annotation.Log;
import com.zhulin.common.enums.BusinessType;
import com.zhulin.bus.domain.Rule;
import com.zhulin.bus.service.IRuleService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 规则管理 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-17
 */
@Controller
@RequestMapping("/bus/rule")
public class RuleController extends BaseController
{
    private String prefix = "bus/rule";
	
	@Autowired
	private IRuleService ruleService;
	@Autowired
	private IRuleTypeService ruleTypeService;
	@Autowired
	private ISysDeptService sysDeptService;
	
	@RequiresPermissions("bus:rule:view")
	@GetMapping()
	public String rule()
	{
	    return prefix + "/rule";
	}
	
	/**
	 * 查询规则管理列表
	 */
	@RequiresPermissions("bus:rule:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Rule rule)
	{
		startPage();
        List<Rule> list = ruleService.selectRuleList(rule);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出规则管理列表
	 */
	@RequiresPermissions("bus:rule:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Rule rule)
    {
    	List<Rule> list = ruleService.selectRuleList(rule);
        ExcelUtil<Rule> util = new ExcelUtil<Rule>(Rule.class);
        return util.exportExcel(list, "rule");
    }
	
	/**
	 * 新增规则管理
	 */
	@GetMapping("/add")
	public String add(Model model)
	{
	    List<RuleType> ruleTypes = ruleTypeService.selectRuleTypeList(new RuleType());
	    List<SysDept> sysDepts = sysDeptService.selectDeptList(new SysDept());

	    model.addAttribute("ruleTypes", ruleTypes);
	    model.addAttribute("sysDepts", sysDepts);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存规则管理
	 */
	@RequiresPermissions("bus:rule:add")
	@Log(title = "规则管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Rule rule)
	{
		rule.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
		rule.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(ruleService.insertRule(rule));
	}

	/**
	 * 修改规则管理
	 */
	@GetMapping("/edit/{ruleId}")
	public String edit(@PathVariable("ruleId") String ruleId, ModelMap mmap, Model model)
	{
		Rule rule = ruleService.selectRuleById(ruleId);
		mmap.put("rule", rule);

		List<RuleType> ruleTypes = ruleTypeService.selectRuleTypeList(new RuleType());

		model.addAttribute("ruleTypes", ruleTypes);

	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存规则管理
	 */
	@RequiresPermissions("bus:rule:edit")
	@Log(title = "规则管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Rule rule)
	{
		rule.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(ruleService.updateRule(rule));
	}
	
	/**
	 * 删除规则管理
	 */
	@RequiresPermissions("bus:rule:remove")
	@Log(title = "规则管理", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(ruleService.deleteRuleByIds(ids));
	}

	@RequiresPermissions("bus:rule:list")
	@GetMapping("/type")
	@ResponseBody
	public AjaxResult jsonType(String ruleTypeId)
	{
		List<Rule> list = ruleService.selectRuleByTypeId(ruleTypeId);

		AjaxResult result = new AjaxResult();

		result.put("json", list);

		return result;
	}

	@RequiresPermissions("sys:dept:list")
	@GetMapping("/check")
	@ResponseBody
	public AjaxResult jsonCheck(String ruleId)
	{
		List<SysDept> checkDepts = sysDeptService.checkRuleList(ruleId);
		List<SysDept> unCheckDepts = sysDeptService.unCheckRuleList(ruleId);

		AjaxResult result = new AjaxResult();

		result.put("checkDepts", checkDepts);
		result.put("uncheckDepts", unCheckDepts);

		return result;
	}
	
}

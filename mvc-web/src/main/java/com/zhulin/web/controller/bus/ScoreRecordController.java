package com.zhulin.web.controller.bus;

import java.util.List;

import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.domain.Rule;
import com.zhulin.bus.service.IAccidentService;
import com.zhulin.bus.service.IRuleService;
import com.zhulin.bus.service.IRuleTypeService;
import com.zhulin.framework.util.ShiroUtils;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.service.ISysUserService;
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
import com.zhulin.bus.domain.ScoreRecord;
import com.zhulin.bus.service.IScoreRecordService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 规则记录管理 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-22
 */
@Controller
@RequestMapping("/bus/scoreRecord")
public class ScoreRecordController extends BaseController
{
    private String prefix = "bus/scoreRecord";
	
	@Autowired
	private IScoreRecordService scoreRecordService;
	@Autowired
	private IRuleService ruleService;
	@Autowired
	private ISysUserService sysUserService;
	
	@RequiresPermissions("bus:scoreRecord:view")
	@GetMapping()
	public String scoreRecord()
	{
	    return prefix + "/scoreRecord";
	}
	
	/**
	 * 查询规则记录管理列表
	 */
	@RequiresPermissions("bus:scoreRecord:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(ScoreRecord scoreRecord)
	{
		startPage();
        List<ScoreRecord> list = scoreRecordService.selectScoreRecordList(scoreRecord);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出规则记录管理列表
	 */
	@RequiresPermissions("bus:scoreRecord:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ScoreRecord scoreRecord)
    {
    	List<ScoreRecord> list = scoreRecordService.selectScoreRecordList(scoreRecord);
        ExcelUtil<ScoreRecord> util = new ExcelUtil<ScoreRecord>(ScoreRecord.class);
        return util.exportExcel(list, "scoreRecord");
    }
	
	/**
	 * 新增规则记录管理
	 */
	@GetMapping("/add")
	public String add(Model model)
	{
		String userId = String.valueOf(ShiroUtils.getUserId());

	    List<Rule> rules = ruleService.selectUserRules(userId);
	    List<SysUser> sysUsers = sysUserService.selectUserList(new SysUser());

		model.addAttribute("sysUsers", sysUsers);
	    model.addAttribute("rules", rules);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存规则记录管理
	 */
	@RequiresPermissions("bus:scoreRecord:add")
	@Log(title = "规则记录管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(ScoreRecord scoreRecord)
	{
		scoreRecord.setOperatorUserName(String.valueOf(ShiroUtils.getUserName()));
		scoreRecord.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(scoreRecordService.insertScoreRecord(scoreRecord));
	}

	/**
	 * 修改规则记录管理
	 */
	@GetMapping("/edit/{scoreRecordId}")
	public String edit(@PathVariable("scoreRecordId") String scoreRecordId, ModelMap mmap, Model model)
	{
		String userId = String.valueOf(ShiroUtils.getUserId());

		ScoreRecord scoreRecord = scoreRecordService.selectScoreRecordById(scoreRecordId);
		mmap.put("scoreRecord", scoreRecord);

		List<Rule> rules = ruleService.selectUserRules(userId);
		List<SysUser> sysUsers = sysUserService.selectUserList(new SysUser());

		model.addAttribute("sysUsers", sysUsers);
		model.addAttribute("rules", rules);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存规则记录管理
	 */
	@RequiresPermissions("bus:scoreRecord:edit")
	@Log(title = "规则记录管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(ScoreRecord scoreRecord)
	{
		scoreRecord.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		scoreRecord.setOperatorUserName(String.valueOf(ShiroUtils.getUserName()));
		return toAjax(scoreRecordService.updateScoreRecord(scoreRecord));
	}
	
	/**
	 * 删除规则记录管理
	 */
	@RequiresPermissions("bus:scoreRecord:remove")
	@Log(title = "规则记录管理", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(scoreRecordService.deleteScoreRecordByIds(ids));
	}
	
}

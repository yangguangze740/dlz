package com.zhulin.web.controller.bus;

import java.util.List;

import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.service.IAccidentService;
import com.zhulin.bus.service.IAccidentTypeService;
import com.zhulin.bus.service.IPunishService;
import com.zhulin.framework.util.ShiroUtils;
import com.zhulin.system.domain.SysDept;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.service.ISysDeptService;
import com.zhulin.system.service.ISysPostService;
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
import com.zhulin.bus.domain.AccidentRecord;
import com.zhulin.bus.service.IAccidentRecordService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 事故记录 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/bus/accidentRecord")
public class AccidentRecordController extends BaseController
{
    private String prefix = "bus/accidentRecord";
	
	@Autowired
	private IAccidentRecordService accidentRecordService;
	@Autowired
	private IAccidentService accidentService;
	@Autowired
	private ISysUserService sysUserService;
	
	@RequiresPermissions("bus:accidentRecord:view")
	@GetMapping()
	public String accidentRecord()
	{
	    return prefix + "/accidentRecord";
	}
	
	/**
	 * 查询事故记录列表
	 */
	@RequiresPermissions("bus:accidentRecord:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AccidentRecord accidentRecord)
	{
		startPage();
        List<AccidentRecord> list = accidentRecordService.selectAccidentRecordList(accidentRecord);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出事故记录列表
	 */
	@RequiresPermissions("bus:accidentRecord:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AccidentRecord accidentRecord)
    {
    	List<AccidentRecord> list = accidentRecordService.selectAccidentRecordList(accidentRecord);
        ExcelUtil<AccidentRecord> util = new ExcelUtil<AccidentRecord>(AccidentRecord.class);
        return util.exportExcel(list, "accidentRecord");
    }
	
	/**
	 * 新增事故记录
	 */
	@GetMapping("/add")
	public String add(Model model)
	{
	    List<Accident> accidents = accidentService.selectAccidentList(new Accident());
	    List<SysUser> sysUsers = sysUserService.selectUserList(new SysUser());

	    model.addAttribute("accidents", accidents);
	    model.addAttribute("sysUsers", sysUsers);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存事故记录
	 */
	@RequiresPermissions("bus:accidentRecord:add")
	@Log(title = "事故记录", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AccidentRecord accidentRecord)
	{
		accidentRecord.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
		accidentRecord.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(accidentRecordService.insertAccidentRecord(accidentRecord));
	}

	/**
	 * 修改事故记录
	 */
	@GetMapping("/edit/{accidentRecordId}")
	public String edit(@PathVariable("accidentRecordId") String accidentRecordId, ModelMap mmap, Model model)
	{
		AccidentRecord accidentRecord = accidentRecordService.selectAccidentRecordById(accidentRecordId);
		mmap.put("accidentRecord", accidentRecord);

		List<Accident> accidents = accidentService.selectAccidentList(new Accident());
		List<SysUser> sysUsers = sysUserService.selectUserList(new SysUser());

		accidentRecord.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		model.addAttribute("accidents", accidents);
		model.addAttribute("sysUsers", sysUsers);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存事故记录
	 */
	@RequiresPermissions("bus:accidentRecord:edit")
	@Log(title = "事故记录", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AccidentRecord accidentRecord)
	{		
		return toAjax(accidentRecordService.updateAccidentRecord(accidentRecord));
	}
	
	/**
	 * 删除事故记录
	 */
	@RequiresPermissions("bus:accidentRecord:remove")
	@Log(title = "事故记录", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(accidentRecordService.deleteAccidentRecordByIds(ids));
	}
	
}

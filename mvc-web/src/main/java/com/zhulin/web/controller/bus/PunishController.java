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
import com.zhulin.bus.domain.Punish;
import com.zhulin.bus.service.IPunishService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 惩罚管理 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-15
 */
@Controller
@RequestMapping("/bus/punish")
public class PunishController extends BaseController
{
    private String prefix = "bus/punish";
	
	@Autowired
	private IPunishService punishService;
	
	@RequiresPermissions("bus:punish:view")
	@GetMapping()
	public String punish()
	{
	    return prefix + "/punish";
	}
	
	/**
	 * 查询惩罚管理列表
	 */
	@RequiresPermissions("bus:punish:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Punish punish)
	{
		startPage();
        List<Punish> list = punishService.selectPunishList(punish);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出惩罚管理列表
	 */
	@RequiresPermissions("bus:punish:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Punish punish)
    {
    	List<Punish> list = punishService.selectPunishList(punish);
        ExcelUtil<Punish> util = new ExcelUtil<Punish>(Punish.class);
        return util.exportExcel(list, "punish");
    }
	
	/**
	 * 新增惩罚管理
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存惩罚管理
	 */
	@RequiresPermissions("bus:punish:add")
	@Log(title = "惩罚管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Punish punish)
	{
		punish.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
		punish.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(punishService.insertPunish(punish));
	}

	/**
	 * 修改惩罚管理
	 */
	@GetMapping("/edit/{punishId}")
	public String edit(@PathVariable("punishId") String punishId, ModelMap mmap)
	{
		Punish punish = punishService.selectPunishById(punishId);
		mmap.put("punish", punish);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存惩罚管理
	 */
	@RequiresPermissions("bus:punish:edit")
	@Log(title = "惩罚管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Punish punish)
	{
		punish.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(punishService.updatePunish(punish));
	}
	
	/**
	 * 删除惩罚管理
	 */
	@RequiresPermissions("bus:punish:remove")
	@Log(title = "惩罚管理", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(punishService.deletePunishByIds(ids));
	}
	
}

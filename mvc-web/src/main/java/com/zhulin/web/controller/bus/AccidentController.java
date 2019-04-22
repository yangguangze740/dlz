package com.zhulin.web.controller.bus;

import java.util.List;

import com.zhulin.bus.domain.AccidentType;
import com.zhulin.bus.domain.Punish;
import com.zhulin.bus.service.IAccidentTypeService;
import com.zhulin.bus.service.IPunishService;
import com.zhulin.framework.util.ShiroUtils;
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
import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.service.IAccidentService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;

/**
 * 事故管理 信息操作处理
 * 
 * @author zhulin
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/bus/accident")
public class AccidentController extends BaseController
{
    private String prefix = "bus/accident";
	
	@Autowired
	private IAccidentService accidentService;
	@Autowired
	private IAccidentTypeService accidentTypeService;
	@Autowired
	private IPunishService punishService;

	@RequiresPermissions("bus:accident:view")
	@GetMapping()
	public String accident()
	{
	    return prefix + "/accident";
	}
	
	/**
	 * 查询事故管理列表
	 */
	@RequiresPermissions("bus:accident:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Accident accident)
	{
		startPage();
        List<Accident> list = accidentService.selectAccidentList(accident);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出事故管理列表
	 */
	@RequiresPermissions("bus:accident:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Accident accident)
    {
    	List<Accident> list = accidentService.selectAccidentList(accident);
        ExcelUtil<Accident> util = new ExcelUtil<Accident>(Accident.class);
        return util.exportExcel(list, "accident");
    }
	
	/**
	 * 新增事故管理
	 */
	@GetMapping("/add")
	public String add(Model model)
	{
		List<AccidentType> accidentTypes = accidentTypeService.selectAccidentTypeList(new AccidentType());
		List<Punish> punishes = punishService.selectPunishList(new Punish());

		model.addAttribute("accidentTypes", accidentTypes);
		model.addAttribute("punishes", punishes);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存事故管理
	 */
	@RequiresPermissions("bus:accident:add")
	@Log(title = "事故管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Accident accident)
	{
		accident.setCreateUserId(String.valueOf(ShiroUtils.getUserId()));
		accident.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(accidentService.insertAccident(accident));
	}

	/**
	 * 修改事故管理
	 */
	@GetMapping("/edit/{accidentId}")
	public String edit(@PathVariable("accidentId") String accidentId, ModelMap mmap, Model model)
	{
		Accident accident = accidentService.selectAccidentById(accidentId);
		mmap.put("accident", accident);

		List<AccidentType> accidentTypes = accidentTypeService.selectAccidentTypeList(new AccidentType());
		List<Punish> punishes = punishService.selectPunishList(new Punish());

		model.addAttribute("accidentTypes", accidentTypes);
		model.addAttribute("punishes", punishes);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存事故管理
	 */
	@RequiresPermissions("bus:accident:edit")
	@Log(title = "事故管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Accident accident)
	{
		accident.setModifyUserId(String.valueOf(ShiroUtils.getUserId()));
		return toAjax(accidentService.updateAccident(accident));
	}
	
	/**
	 * 删除事故管理
	 */
	@RequiresPermissions("bus:accident:remove")
	@Log(title = "事故管理", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(accidentService.deleteAccidentByIds(ids));
	}
	
}

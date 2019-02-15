package com.zhulin.web.controller.system;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;

import com.google.common.base.Strings;
import com.zhulin.common.FileSaveResult;
import com.zhulin.common.FileStoreUtil;
import com.zhulin.common.constant.Constants;
import com.zhulin.framework.util.ShiroUtils;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import com.zhulin.common.annotation.Log;
import com.zhulin.common.enums.BusinessType;
import com.zhulin.system.domain.UiConfig;
import com.zhulin.system.service.IUiConfigService;
import com.zhulin.framework.web.base.BaseController;
import com.zhulin.common.page.TableDataInfo;
import com.zhulin.common.base.AjaxResult;
import com.zhulin.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

/**
 * 系统ui配置 信息操作处理
 * 
 * @author zhulin
 * @date 2019-02-14
 */
@Controller
@RequestMapping("/system/uiConfig")
public class UiConfigController extends BaseController
{
    private String prefix = "system/uiConfig";
	
	@Autowired
	private IUiConfigService uiConfigService;
	
	@RequiresPermissions("system:uiConfig:view")
	@GetMapping()
	public String uiConfig()
	{
	    return prefix + "/uiConfig";
	}
	
	/**
	 * 查询系统ui配置列表
	 */
	@RequiresPermissions("system:uiConfig:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(UiConfig uiConfig)
	{
		startPage();
        List<UiConfig> list = uiConfigService.selectUiConfigList(uiConfig);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出系统ui配置列表
	 */
	@RequiresPermissions("system:uiConfig:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UiConfig uiConfig)
    {
    	List<UiConfig> list = uiConfigService.selectUiConfigList(uiConfig);
        ExcelUtil<UiConfig> util = new ExcelUtil<UiConfig>(UiConfig.class);
        return util.exportExcel(list, "uiConfig");
    }
	
	/**
	 * 新增系统ui配置
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存系统ui配置
	 */
	@RequiresPermissions("system:uiConfig:add")
	@Log(title = "系统ui配置", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(UiConfig uiConfig,
							  @RequestParam(value = "loginImageFile", required = false) MultipartFile loginImageFile,
							  @RequestParam(value = "faviconIcoFile", required = false) MultipartFile faviconIco) throws FileNotFoundException {
		List<UiConfig> configs = uiConfigService.selectUiConfigList(new UiConfig());

		UiConfig oldUiConfig = null;

		if (configs.isEmpty()) {
			oldUiConfig = new UiConfig();

			oldUiConfig.setUiConfigId(Constants.UI_CONFIG_DEFAULT_ID);
			oldUiConfig.setUiTitleName(Constants.UI_CONFIG_DEFAULT_TITLE_NAME);
			oldUiConfig.setLittleTitle(Constants.UI_CONFIG_DEFAULT_LITTLE_TITLE);
			oldUiConfig.setFaviconIco(Constants.UI_CONFIG_DEFAULT_TITLE_ICO_FILE_NAME);
			oldUiConfig.setLoginImage(Constants.UI_CONFIG_DEFAULT_LOGIN_IMAGE_FILE_NAME);
			oldUiConfig.setSystemName(Constants.UI_CONFIG_DEFAULT_SYSTEM_NAME);
		} else {
			oldUiConfig = configs.get(0);
		}

		String path = ResourceUtils.getURL("classpath:").getPath();

		// 保存登录页面的logo图

		if (loginImageFile == null || Strings.isNullOrEmpty(loginImageFile.getOriginalFilename())) {
			uiConfig.setLoginImage(oldUiConfig.getLoginImage());
		} else {
			String loginImagePath = path + "static/";
			FileSaveResult result = FileStoreUtil.saveSpringWebMultipartFile(loginImagePath, loginImageFile, Constants.UI_CONFIG_DEFAULT_LOGIN_IMAGE_FILE_NAME);
			String loginImageFileName = result.getDistFileName();

			if (Strings.isNullOrEmpty(loginImageFileName)) {
				loginImageFileName = Constants.UI_CONFIG_DEFAULT_LOGIN_IMAGE_FILE_NAME;
			}

			uiConfig.setLoginImage(loginImageFileName);
		}

		// 保存页签上的ico文件
		if (faviconIco == null || Strings.isNullOrEmpty(faviconIco.getOriginalFilename())) {
			uiConfig.setFaviconIco(oldUiConfig.getFaviconIco());
		} else {
			String faviconIcoPath = path + "static/";
			FileSaveResult result = FileStoreUtil.saveSpringWebMultipartFile(faviconIcoPath, faviconIco, Constants.UI_CONFIG_DEFAULT_TITLE_ICO_FILE_NAME);
			String faviconIcoFileName = result.getDistFileName();

			if (Strings.isNullOrEmpty(faviconIcoFileName)) {
				faviconIcoFileName = Constants.UI_CONFIG_DEFAULT_TITLE_ICO_FILE_NAME;
			}

			uiConfig.setFaviconIco(faviconIcoFileName);
		}

		if (Strings.isNullOrEmpty(uiConfig.getSystemName())) {
			uiConfig.setSystemName(oldUiConfig.getSystemName());
		}

		if (Strings.isNullOrEmpty(uiConfig.getLittleTitle())) {
			uiConfig.setLittleTitle(oldUiConfig.getLittleTitle());
		}

		if (Strings.isNullOrEmpty(uiConfig.getUiTitleName())) {
			uiConfig.setUiTitleName(oldUiConfig.getUiTitleName());
		}

		if (null == uiConfig.getUiConfigId()) {
		    uiConfig.setUiConfigId(Constants.UI_CONFIG_DEFAULT_ID);
        }

        uiConfig.setUpdateBy(ShiroUtils.getLoginName());
        uiConfig.setCreateBy(ShiroUtils.getLoginName());
        ShiroUtils.clearCachedAuthorizationInfo();

		return toAjax(uiConfigService.updateUiConfig(uiConfig));
	}

	/**
	 * 修改系统ui配置
	 */
	@GetMapping("/edit/{uiConfigId}")
	public String edit(@PathVariable("uiConfigId") Integer uiConfigId, ModelMap mmap)
	{
		UiConfig uiConfig = uiConfigService.selectUiConfigById(uiConfigId);
		mmap.put("uiConfig", uiConfig);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存系统ui配置
	 */
	@RequiresPermissions("system:uiConfig:edit")
	@Log(title = "系统ui配置", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(UiConfig uiConfig)
	{		
		return toAjax(uiConfigService.updateUiConfig(uiConfig));
	}
	
	/**
	 * 删除系统ui配置
	 */
	@RequiresPermissions("system:uiConfig:remove")
	@Log(title = "系统ui配置", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(uiConfigService.deleteUiConfigByIds(ids));
	}
	
}

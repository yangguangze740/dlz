package com.zhulin.system.mapper;

import com.zhulin.system.domain.UiConfig;
import java.util.List;	

/**
 * 系统ui配置 数据层
 * 
 * @author zhulin
 * @date 2019-02-14
 */
public interface UiConfigMapper 
{
	/**
     * 查询系统ui配置信息
     * 
     * @param uiConfigId 系统ui配置ID
     * @return 系统ui配置信息
     */
	public UiConfig selectUiConfigById(Integer uiConfigId);
	
	/**
     * 查询系统ui配置列表
     * 
     * @param uiConfig 系统ui配置信息
     * @return 系统ui配置集合
     */
	public List<UiConfig> selectUiConfigList(UiConfig uiConfig);
	
	/**
     * 新增系统ui配置
     * 
     * @param uiConfig 系统ui配置信息
     * @return 结果
     */
	public int insertUiConfig(UiConfig uiConfig);
	
	/**
     * 修改系统ui配置
     * 
     * @param uiConfig 系统ui配置信息
     * @return 结果
     */
	public int updateUiConfig(UiConfig uiConfig);
	
	/**
     * 删除系统ui配置
     * 
     * @param uiConfigId 系统ui配置ID
     * @return 结果
     */
	public int deleteUiConfigById(Integer uiConfigId);
	
	/**
     * 批量删除系统ui配置
     * 
     * @param uiConfigIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteUiConfigByIds(String[] uiConfigIds);
	
}
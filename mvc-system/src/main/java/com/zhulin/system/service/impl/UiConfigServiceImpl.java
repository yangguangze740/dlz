package com.zhulin.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.system.mapper.UiConfigMapper;
import com.zhulin.system.domain.UiConfig;
import com.zhulin.system.service.IUiConfigService;
import com.zhulin.common.support.Convert;

/**
 * 系统ui配置 服务层实现
 * 
 * @author zhulin
 * @date 2019-02-14
 */
@Service
public class UiConfigServiceImpl implements IUiConfigService 
{
	@Autowired
	private UiConfigMapper uiConfigMapper;

	/**
     * 查询系统ui配置信息
     * 
     * @param uiConfigId 系统ui配置ID
     * @return 系统ui配置信息
     */
    @Override
	public UiConfig selectUiConfigById(Integer uiConfigId)
	{
	    return uiConfigMapper.selectUiConfigById(uiConfigId);
	}
	
	/**
     * 查询系统ui配置列表
     * 
     * @param uiConfig 系统ui配置信息
     * @return 系统ui配置集合
     */
	@Override
	public List<UiConfig> selectUiConfigList(UiConfig uiConfig)
	{
	    return uiConfigMapper.selectUiConfigList(uiConfig);
	}
	
    /**
     * 新增系统ui配置
     * 
     * @param uiConfig 系统ui配置信息
     * @return 结果
     */
	@Override
	public int insertUiConfig(UiConfig uiConfig)
	{
	    return uiConfigMapper.insertUiConfig(uiConfig);
	}
	
	/**
     * 修改系统ui配置
     * 
     * @param uiConfig 系统ui配置信息
     * @return 结果
     */
	@Override
	public int updateUiConfig(UiConfig uiConfig)
	{
		if (uiConfigMapper.selectUiConfigList(new UiConfig()).isEmpty()) {
			return uiConfigMapper.insertUiConfig(uiConfig);
		} else {
			return uiConfigMapper.updateUiConfig(uiConfig);
		}
	}

	/**
     * 删除系统ui配置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteUiConfigByIds(String ids)
	{
		return uiConfigMapper.deleteUiConfigByIds(Convert.toStrArray(ids));
	}
	
}

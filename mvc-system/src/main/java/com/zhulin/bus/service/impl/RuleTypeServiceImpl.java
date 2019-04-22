package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.common.utils.PrimaryKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.RuleTypeMapper;
import com.zhulin.bus.domain.RuleType;
import com.zhulin.bus.service.IRuleTypeService;
import com.zhulin.common.support.Convert;

/**
 * 规则类型管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-18
 */
@Service
public class RuleTypeServiceImpl implements IRuleTypeService 
{
	@Autowired
	private RuleTypeMapper ruleTypeMapper;

	/**
     * 查询规则类型管理信息
     * 
     * @param ruleTypeId 规则类型管理ID
     * @return 规则类型管理信息
     */
    @Override
	public RuleType selectRuleTypeById(String ruleTypeId)
	{
	    return ruleTypeMapper.selectRuleTypeById(ruleTypeId);
	}
	
	/**
     * 查询规则类型管理列表
     * 
     * @param ruleType 规则类型管理信息
     * @return 规则类型管理集合
     */
	@Override
	public List<RuleType> selectRuleTypeList(RuleType ruleType)
	{
	    return ruleTypeMapper.selectRuleTypeList(ruleType);
	}
	
    /**
     * 新增规则类型管理
     * 
     * @param ruleType 规则类型管理信息
     * @return 结果
     */
	@Override
	public int insertRuleType(RuleType ruleType)
	{
	    ruleType.setRuleTypeId(PrimaryKeyUtil.uuidPrimaryKey());
		return ruleTypeMapper.insertRuleType(ruleType);
	}
	
	/**
     * 修改规则类型管理
     * 
     * @param ruleType 规则类型管理信息
     * @return 结果
     */
	@Override
	public int updateRuleType(RuleType ruleType)
	{
	    return ruleTypeMapper.updateRuleType(ruleType);
	}

	/**
     * 删除规则类型管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteRuleTypeByIds(String ids)
	{
		return ruleTypeMapper.deleteRuleTypeByIds(Convert.toStrArray(ids));
	}
	
}

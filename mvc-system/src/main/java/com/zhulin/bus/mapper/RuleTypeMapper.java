package com.zhulin.bus.mapper;

import com.zhulin.bus.domain.RuleType;
import java.util.List;	

/**
 * 规则类型管理 数据层
 * 
 * @author zhulin
 * @date 2019-04-17
 */
public interface RuleTypeMapper 
{
	/**
     * 查询规则类型管理信息
     * 
     * @param ruleTypeId 规则类型管理ID
     * @return 规则类型管理信息
     */
	public RuleType selectRuleTypeById(String ruleTypeId);
	
	/**
     * 查询规则类型管理列表
     * 
     * @param ruleType 规则类型管理信息
     * @return 规则类型管理集合
     */
	public List<RuleType> selectRuleTypeList(RuleType ruleType);
	
	/**
     * 新增规则类型管理
     * 
     * @param ruleType 规则类型管理信息
     * @return 结果
     */
	public int insertRuleType(RuleType ruleType);
	
	/**
     * 修改规则类型管理
     * 
     * @param ruleType 规则类型管理信息
     * @return 结果
     */
	public int updateRuleType(RuleType ruleType);
	
	/**
     * 删除规则类型管理
     * 
     * @param ruleTypeId 规则类型管理ID
     * @return 结果
     */
	public int deleteRuleTypeById(String ruleTypeId);
	
	/**
     * 批量删除规则类型管理
     * 
     * @param ruleTypeIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteRuleTypeByIds(String[] ruleTypeIds);
	
}
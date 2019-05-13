package com.zhulin.bus.mapper;

import com.zhulin.bus.domain.RuleDept;
import java.util.List;	

/**
 * 规则部门关联 数据层
 * 
 * @author zhulin
 * @date 2019-05-11
 */
public interface RuleDeptMapper 
{
	/**
     * 查询规则部门关联信息
     * 
     * @param ruleId 规则部门关联ID
     * @return 规则部门关联信息
     */
	public RuleDept selectRuleDeptById(String ruleId);
	
	/**
     * 查询规则部门关联列表
     * 
     * @param ruleDept 规则部门关联信息
     * @return 规则部门关联集合
     */
	public List<RuleDept> selectRuleDeptList(RuleDept ruleDept);
	
	/**
     * 新增规则部门关联
     * 
     * @param ruleDeptList 规则部门关联信息
     * @return 结果
     */
	public int insertRuleDept(List<RuleDept> ruleDeptList);
	
	/**
     * 修改规则部门关联
     * 
     * @param ruleDept 规则部门关联信息
     * @return 结果
     */
	public int updateRuleDept(RuleDept ruleDept);
	
	/**
     * 删除规则部门关联
     * 
     * @param ruleId 规则部门关联ID
     * @return 结果
     */
	public int deleteRuleDeptById(String ruleId);
	
	/**
     * 批量删除规则部门关联
     * 
     * @param ruleIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteRuleDeptByIds(String[] ruleIds);
	
}
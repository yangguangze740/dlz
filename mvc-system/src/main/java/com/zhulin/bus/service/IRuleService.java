package com.zhulin.bus.service;

import com.zhulin.bus.domain.Rule;
import java.util.List;

/**
 * 规则管理 服务层
 * 
 * @author zhulin
 * @date 2019-04-17
 */
public interface IRuleService 
{
	/**
     * 查询规则管理信息
     * 
     * @param ruleId 规则管理ID
     * @return 规则管理信息
     */
	public Rule selectRuleById(String ruleId);
	
	/**
     * 查询规则管理列表
     * 
     * @param rule 规则管理信息
     * @return 规则管理集合
     */
	public List<Rule> selectRuleList(Rule rule);
	
	/**
     * 新增规则管理
     * 
     * @param rule 规则管理信息
     * @return 结果
     */
	public int insertRule(Rule rule);
	
	/**
     * 修改规则管理
     * 
     * @param rule 规则管理信息
     * @return 结果
     */
	public int updateRule(Rule rule);
		
	/**
     * 删除规则管理信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteRuleByIds(String ids);

    List<Rule> selectRuleByTypeId(String ruleTypeId);
}

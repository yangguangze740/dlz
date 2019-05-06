package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.common.utils.PrimaryKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.RuleMapper;
import com.zhulin.bus.domain.Rule;
import com.zhulin.bus.service.IRuleService;
import com.zhulin.common.support.Convert;

/**
 * 规则管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-17
 */
@Service
public class RuleServiceImpl implements IRuleService 
{
	@Autowired
	private RuleMapper ruleMapper;

	/**
     * 查询规则管理信息
     * 
     * @param ruleId 规则管理ID
     * @return 规则管理信息
     */
    @Override
	public Rule selectRuleById(String ruleId)
	{
	    return ruleMapper.selectRuleById(ruleId);
	}
	
	/**
     * 查询规则管理列表
     * 
     * @param rule 规则管理信息
     * @return 规则管理集合
     */
	@Override
	public List<Rule> selectRuleList(Rule rule)
	{
	    return ruleMapper.selectRuleList(rule);
	}
	
    /**
     * 新增规则管理
     * 
     * @param rule 规则管理信息
     * @return 结果
     */
	@Override
	public int insertRule(Rule rule)
	{
		rule.setRuleId(PrimaryKeyUtil.uuidPrimaryKey());
	    return ruleMapper.insertRule(rule);
	}
	
	/**
     * 修改规则管理
     * 
     * @param rule 规则管理信息
     * @return 结果
     */
	@Override
	public int updateRule(Rule rule)
	{
	    return ruleMapper.updateRule(rule);
	}

	/**
     * 删除规则管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteRuleByIds(String ids)
	{
		return ruleMapper.deleteRuleByIds(Convert.toStrArray(ids));
	}

	@Override
	public List<Rule> selectRuleByTypeId(String ruleTypeId) {
		return ruleMapper.selectRuleByTypeId(ruleTypeId);
	}

}

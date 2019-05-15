package com.zhulin.bus.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.zhulin.bus.domain.RuleDept;
import com.zhulin.bus.mapper.RuleDeptMapper;
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
	@Autowired
	private RuleDeptMapper ruleDeptMapper;

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
		String ruleId = PrimaryKeyUtil.uuidPrimaryKey();
		rule.setRuleId(ruleId);

		List<String> deptIds = rule.getDeptIds();
		List<RuleDept> ruleDeptList = new ArrayList<>();

		for(String deptId:deptIds){

			RuleDept ruleDept = new RuleDept();
			ruleDept.setDeptId(deptId);
			ruleDept.setRuleId(ruleId);

			ruleDeptList.add(ruleDept);
		}

		int insertRuleDept = ruleDeptMapper.insertRuleDept(ruleDeptList);
		int insertRule = ruleMapper.insertRule(rule);

	    return insertRule;
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
	    int deleteNum = ruleDeptMapper.deleteRuleDeptById(rule.getRuleId());

	    List<String> deptIds = rule.getDeptIds();
	    List<RuleDept> ruleDeptList = new ArrayList<>();

	    for(String deptId :deptIds){

	    	RuleDept ruleDept = new RuleDept();
	    	ruleDept.setRuleId(rule.getRuleId());
	    	ruleDept.setDeptId(deptId);
			ruleDeptList.add(ruleDept);
		}

		int updateRule = ruleMapper.updateRule(rule);
	    int insertRuleDept = ruleDeptMapper.insertRuleDept(ruleDeptList);

		return updateRule ;
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

	@Override
	public List<Rule> selectUserRules(long userId) {

		if(userId == 1){
			return ruleMapper.selectRuleList(new Rule());
		}
		else {
			return ruleMapper.selectUserRules(userId);
		}
	}

}

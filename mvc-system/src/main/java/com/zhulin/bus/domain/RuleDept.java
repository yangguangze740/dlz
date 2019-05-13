package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 规则部门关联表 jx_rule_dept
 * 
 * @author zhulin
 * @date 2019-05-11
 */
public class RuleDept extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private String ruleId;
	/**  */
	private String deptId;

	public void setRuleId(String ruleId) 
	{
		this.ruleId = ruleId;
	}

	public String getRuleId() 
	{
		return ruleId;
	}
	public void setDeptId(String deptId) 
	{
		this.deptId = deptId;
	}

	public String getDeptId() 
	{
		return deptId;
	}

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("ruleId", getRuleId())
            .append("deptId", getDeptId())
            .toString();
    }
}

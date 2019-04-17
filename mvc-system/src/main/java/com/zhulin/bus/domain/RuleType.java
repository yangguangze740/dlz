package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 规则类型管理表 jx_rule_type
 * 
 * @author zhulin
 * @date 2019-04-17
 */
public class RuleType extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 规则类型主键 */
	private String ruleTypeId;
	/** 规则类型名 */
	private String ruleTypeName;
	/** 删除标识 0:未删除 1:已删除 */
	private Integer deleteFlag;
	/**  */
	private String modifyUserId;
	/**  */
	private Date createTime;
	/**  */
	private String createUserId;
	/**  */
	private Date modifyTime;

	public void setRuleTypeId(String ruleTypeId) 
	{
		this.ruleTypeId = ruleTypeId;
	}

	public String getRuleTypeId() 
	{
		return ruleTypeId;
	}
	public void setRuleTypeName(String ruleTypeName) 
	{
		this.ruleTypeName = ruleTypeName;
	}

	public String getRuleTypeName() 
	{
		return ruleTypeName;
	}
	public void setDeleteFlag(Integer deleteFlag) 
	{
		this.deleteFlag = deleteFlag;
	}

	public Integer getDeleteFlag() 
	{
		return deleteFlag;
	}
	public void setModifyUserId(String modifyUserId) 
	{
		this.modifyUserId = modifyUserId;
	}

	public String getModifyUserId() 
	{
		return modifyUserId;
	}
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}

	public Date getCreateTime() 
	{
		return createTime;
	}
	public void setCreateUserId(String createUserId) 
	{
		this.createUserId = createUserId;
	}

	public String getCreateUserId() 
	{
		return createUserId;
	}
	public void setModifyTime(Date modifyTime) 
	{
		this.modifyTime = modifyTime;
	}

	public Date getModifyTime() 
	{
		return modifyTime;
	}

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("ruleTypeId", getRuleTypeId())
            .append("ruleTypeName", getRuleTypeName())
            .append("deleteFlag", getDeleteFlag())
            .append("modifyUserId", getModifyUserId())
            .append("createTime", getCreateTime())
            .append("createUserId", getCreateUserId())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}

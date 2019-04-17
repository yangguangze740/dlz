package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 规则管理表 jx_rule
 * 
 * @author zhulin
 * @date 2019-04-17
 */
public class Rule extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 规则主键 */
	private String ruleId;
	/** 规则名 */
	private String ruleName;
	/** 规则类别主键 */
	private String ruleTypeId;
	/** 规则分数 */
	private Integer score;
	/** 加减分标识 1:加分 -1:减分 */
	private Integer scoreFlag;
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
	private String ruleTypeName;

	public String getRuleTypeName() {
		return ruleTypeName;
	}

	public void setRuleTypeName(String ruleTypeName) {
		this.ruleTypeName = ruleTypeName;
	}

	public void setRuleId(String ruleId)
	{
		this.ruleId = ruleId;
	}

	public String getRuleId() 
	{
		return ruleId;
	}
	public void setRuleName(String ruleName) 
	{
		this.ruleName = ruleName;
	}

	public String getRuleName() 
	{
		return ruleName;
	}
	public void setRuleTypeId(String ruleTypeId) 
	{
		this.ruleTypeId = ruleTypeId;
	}

	public String getRuleTypeId() 
	{
		return ruleTypeId;
	}
	public void setScore(Integer score) 
	{
		this.score = score;
	}

	public Integer getScore() 
	{
		return score;
	}
	public void setScoreFlag(Integer scoreFlag) 
	{
		this.scoreFlag = scoreFlag;
	}

	public Integer getScoreFlag() 
	{
		return scoreFlag;
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
            .append("ruleId", getRuleId())
            .append("ruleName", getRuleName())
            .append("ruleTypeId", getRuleTypeId())
            .append("score", getScore())
            .append("scoreFlag", getScoreFlag())
            .append("deleteFlag", getDeleteFlag())
            .append("modifyUserId", getModifyUserId())
            .append("createTime", getCreateTime())
            .append("createUserId", getCreateUserId())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}

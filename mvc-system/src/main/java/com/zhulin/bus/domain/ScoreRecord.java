package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 规则记录管理表 jx_score_record
 * 
 * @author zhulin
 * @date 2019-04-22
 */
public class ScoreRecord extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private String scoreRecordId;
	/**  */
	private String userId;
	/**  */
	private String ruleTypeId;
	/**  */
	private String ruleId;
	/**  */
	private String operatorUserName;
	/**  */
	private String modifyUserId;
	/**  */
	private Date createTime;
	/**  */
	private Date modifyTime;

	private String userName;
	private String ruleTypeName;
	private String ruleName;
	private int deleteFlag;



	public String getRuleTypeId() {
		return ruleTypeId;
	}

	public void setRuleTypeId(String ruleTypeId) {
		this.ruleTypeId = ruleTypeId;
	}

	public String getRuleId() {
		return ruleId;
	}

	public void setRuleId(String ruleId) {
		this.ruleId = ruleId;
	}

	public String getRuleTypeName() {
		return ruleTypeName;
	}

	public void setRuleTypeName(String ruleTypeName) {
		this.ruleTypeName = ruleTypeName;
	}

	public String getRuleName() {
		return ruleName;
	}

	public void setRuleName(String ruleName) {
		this.ruleName = ruleName;
	}

	public int getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(int deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setScoreRecordId(String scoreRecordId)
	{
		this.scoreRecordId = scoreRecordId;
	}

	public String getScoreRecordId() 
	{
		return scoreRecordId;
	}
	public void setUserId(String userId) 
	{
		this.userId = userId;
	}

	public String getUserId() 
	{
		return userId;
	}

	public String getOperatorUserName() {
		return operatorUserName;
	}

	public void setOperatorUserName(String operatorUserName) {
		this.operatorUserName = operatorUserName;
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
            .append("scoreRecordId", getScoreRecordId())
            .append("userId", getUserId())
            .append("ruleTypeId", getRuleTypeId())
            .append("ruleId", getRuleId())
            .append("operatorUserId", getOperatorUserName())
            .append("modifyUserId", getModifyUserId())
            .append("createTime", getCreateTime())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}

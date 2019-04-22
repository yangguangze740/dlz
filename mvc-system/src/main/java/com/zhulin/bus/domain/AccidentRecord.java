package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 事故记录表 jx_accident_record
 * 
 * @author zhulin
 * @date 2019-04-19
 */
public class AccidentRecord extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 记录id’ */
	private String accidentRecordId;
	/** 部门 */
	private String deptId;
	/** 岗位id */
	private String postId;
	/** 处罚方法id */
	private String punishId;
	/**  */
	private Date startTime;
	/**  */
	private Date stopTime;
	/**  */
	private String userId;
	/**  */
	private Integer deleteFlag;
	/**  */
	private Date createTime;
	/** 事故类型Id */
	private String accidentTypeId;
	/** 事故id */
	private String accidentId;
	/** 事故描述 */
	private String accidentDescription;
	/** 备注 */
	private String remarks;
	/**  */
	private String createUserId;
	/**  */
	private String modifyUserId;
	/**  */
	private Date modifyTime;

	private String userName;
	private String accidentTypeName;
	private String accidentName;
	private String punishName;
	private String deptName;
	private String postName;

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAccidentTypeName() {
		return accidentTypeName;
	}

	public void setAccidentTypeName(String accidentTypeName) {
		this.accidentTypeName = accidentTypeName;
	}

	public String getAccidentName() {
		return accidentName;
	}

	public void setAccidentName(String accidentName) {
		this.accidentName = accidentName;
	}

	public String getPunishName() {
		return punishName;
	}

	public void setPunishName(String punishName) {
		this.punishName = punishName;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public void setAccidentRecordId(String accidentRecordId)
	{
		this.accidentRecordId = accidentRecordId;
	}

	public String getAccidentRecordId() 
	{
		return accidentRecordId;
	}
	public void setDeptId(String deptId) 
	{
		this.deptId = deptId;
	}

	public String getDeptId() 
	{
		return deptId;
	}
	public void setPostId(String postId) 
	{
		this.postId = postId;
	}

	public String getPostId() 
	{
		return postId;
	}
	public void setPunishId(String punishId) 
	{
		this.punishId = punishId;
	}

	public String getPunishId() 
	{
		return punishId;
	}
	public void setStartTime(Date startTime) 
	{
		this.startTime = startTime;
	}

	public Date getStartTime() 
	{
		return startTime;
	}
	public void setStopTime(Date stopTime) 
	{
		this.stopTime = stopTime;
	}

	public Date getStopTime() 
	{
		return stopTime;
	}
	public void setUserId(String userId) 
	{
		this.userId = userId;
	}

	public String getUserId() 
	{
		return userId;
	}
	public void setDeleteFlag(Integer deleteFlag) 
	{
		this.deleteFlag = deleteFlag;
	}

	public Integer getDeleteFlag() 
	{
		return deleteFlag;
	}
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}

	public Date getCreateTime() 
	{
		return createTime;
	}
	public void setAccidentTypeId(String accidentTypeId) 
	{
		this.accidentTypeId = accidentTypeId;
	}

	public String getAccidentTypeId() 
	{
		return accidentTypeId;
	}
	public void setAccidentId(String accidentId) 
	{
		this.accidentId = accidentId;
	}

	public String getAccidentId() 
	{
		return accidentId;
	}
	public void setAccidentDescription(String accidentDescription) 
	{
		this.accidentDescription = accidentDescription;
	}

	public String getAccidentDescription() 
	{
		return accidentDescription;
	}
	public void setRemarks(String remarks) 
	{
		this.remarks = remarks;
	}

	public String getRemarks() 
	{
		return remarks;
	}
	public void setCreateUserId(String createUserId) 
	{
		this.createUserId = createUserId;
	}

	public String getCreateUserId() 
	{
		return createUserId;
	}
	public void setModifyUserId(String modifyUserId) 
	{
		this.modifyUserId = modifyUserId;
	}

	public String getModifyUserId() 
	{
		return modifyUserId;
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
            .append("accidentRecordId", getAccidentRecordId())
            .append("deptId", getDeptId())
            .append("postId", getPostId())
            .append("punishId", getPunishId())
            .append("startTime", getStartTime())
            .append("stopTime", getStopTime())
            .append("userId", getUserId())
            .append("deleteFlag", getDeleteFlag())
            .append("createTime", getCreateTime())
            .append("accidentTypeId", getAccidentTypeId())
            .append("accidentId", getAccidentId())
            .append("accidentDescription", getAccidentDescription())
            .append("remarks", getRemarks())
            .append("createUserId", getCreateUserId())
            .append("modifyUserId", getModifyUserId())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}

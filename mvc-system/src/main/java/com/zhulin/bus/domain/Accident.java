package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 事故管理表 jx_accident
 * 
 * @author zhulin
 * @date 2019-04-11
 */
public class Accident extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 事故id */
	private String accidentId;
	/** 事故名 */
	private String accidentName;
	/** 事故类别 */
	private String accidentTypeId;
	/** 事故类别名 */
	private String accidentTypeName;
	/**  */
	private Date createTime;
	/**  */
	private Date modifyTime;
	/**  */
	private String createUserId;
	/**  */
	private String modifyUserId;
	/**  */
	private Integer deleteFlag;
	private String punishId;
	private String punishName;

	public String getPunishName() {
		return punishName;
	}

	public void setPunishName(String punishName) {
		this.punishName = punishName;
	}

	public String getPunishId() {
		return punishId;
	}

	public void setPunishId(String punishId) {
		this.punishId = punishId;
	}

	public void setAccidentId(String accidentId)
	{
		this.accidentId = accidentId;
	}

	public String getAccidentId() 
	{
		return accidentId;
	}
	public void setAccidentName(String accidentName) 
	{
		this.accidentName = accidentName;
	}

	public String getAccidentName() 
	{
		return accidentName;
	}
	public void setAccidentTypeId(String accidentTypeId) 
	{
		this.accidentTypeId = accidentTypeId;
	}

	public String getAccidentTypeId() 
	{
		return accidentTypeId;
	}
	public void setAccidentTypeName(String accidentTypeName) 
	{
		this.accidentTypeName = accidentTypeName;
	}

	public String getAccidentTypeName() 
	{
		return accidentTypeName;
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
	public void setDeleteFlag(Integer deleteFlag) 
	{
		this.deleteFlag = deleteFlag;
	}

	public Integer getDeleteFlag() 
	{
		return deleteFlag;
	}

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("accidentId", getAccidentId())
            .append("accidentName", getAccidentName())
            .append("accidentTypeId", getAccidentTypeId())
            .append("accidentTypeName", getAccidentTypeName())
            .append("createTime", getCreateTime())
            .append("modifyTime", getModifyTime())
            .append("createUserId", getCreateUserId())
            .append("modifyUserId", getModifyUserId())
            .append("deleteFlag", getDeleteFlag())
			.append("punishId", getPunishId())
			.append("punishName", getPunishName())
            .toString();
    }
}

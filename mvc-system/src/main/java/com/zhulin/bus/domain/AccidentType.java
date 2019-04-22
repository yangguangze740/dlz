package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 事故类别管理表 jx_accident_type
 * 
 * @author zhulin
 * @date 2019-04-18
 */
public class AccidentType extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 事故类别id */
	private String accidentTypeId;
	/** 事故类别名 */
	private String accidentTypeName;
	/**  */
	private Integer deleteFlag;
	/**  */
	private Date createTime;
	/**  */
	private Date modifyTime;
	/**  */
	private String createUserId;
	/**  */
	private String modifyUserId;

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

    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("accidentTypeId", getAccidentTypeId())
            .append("accidentTypeName", getAccidentTypeName())
            .append("deleteFlag", getDeleteFlag())
            .append("createTime", getCreateTime())
            .append("modifyTime", getModifyTime())
            .append("createUserId", getCreateUserId())
            .append("modifyUserId", getModifyUserId())
            .toString();
    }
}

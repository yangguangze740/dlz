package com.zhulin.bus.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.sql.Date;

/**
 * 惩罚管理表 jx_punish
 * 
 * @author zhulin
 * @date 2019-04-18
 */
public class Punish extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 惩罚id */
	private String punishId;
	/** 惩罚措施 */
	private String punishName;
	/**  */
	private Integer deleteFlag;
	/**  */
	private Integer monthLength;
	/**  */
	private String createUserId;
	/**  */
	private String modifyUserId;
	/**  */
	private Date createTime;
	/**  */
	private Date modifyTime;

	public void setPunishId(String punishId) 
	{
		this.punishId = punishId;
	}

	public String getPunishId() 
	{
		return punishId;
	}
	public void setPunishName(String punishName) 
	{
		this.punishName = punishName;
	}

	public String getPunishName() 
	{
		return punishName;
	}
	public void setDeleteFlag(Integer deleteFlag) 
	{
		this.deleteFlag = deleteFlag;
	}

	public Integer getDeleteFlag() 
	{
		return deleteFlag;
	}
	public void setMonthLength(Integer monthLength) 
	{
		this.monthLength = monthLength;
	}

	public Integer getMonthLength() 
	{
		return monthLength;
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
            .append("punishId", getPunishId())
            .append("punishName", getPunishName())
            .append("deleteFlag", getDeleteFlag())
            .append("monthLength", getMonthLength())
            .append("createUserId", getCreateUserId())
            .append("modifyUserId", getModifyUserId())
            .append("createTime", getCreateTime())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}

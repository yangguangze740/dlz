package com.zhulin.system.domain;


import com.zhulin.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 系统ui配置表 sys_ui_config
 * 
 * @author zhulin
 * @date 2019-02-14
 */
public class UiConfig extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer uiConfigId;
	/** 登录页面的图片 */
	private String loginImage;
	/** 系统名 */
	private String systemName;
	/** 系统页签title值 */
	private String uiTitleName;
	/** ico文件 */
	private String faviconIco;
	/** 导航栏折叠后名称 */
	private String littleTitle;

	public void setUiConfigId(Integer uiConfigId) 
	{
		this.uiConfigId = uiConfigId;
	}

	public Integer getUiConfigId() 
	{
		return uiConfigId;
	}
	public void setLoginImage(String loginImage) 
	{
		this.loginImage = loginImage;
	}

	public String getLoginImage() 
	{
		return loginImage;
	}
	public void setSystemName(String systemName) 
	{
		this.systemName = systemName;
	}

	public String getSystemName() 
	{
		return systemName;
	}
	public void setUiTitleName(String uiTitleName) 
	{
		this.uiTitleName = uiTitleName;
	}

	public String getUiTitleName() 
	{
		return uiTitleName;
	}
	public void setFaviconIco(String faviconIco) 
	{
		this.faviconIco = faviconIco;
	}

	public String getFaviconIco() 
	{
		return faviconIco;
	}

	public String getLittleTitle() 
	{
		return littleTitle;
	}

	public void setLittleTitle(String littleTitle) {
		this.littleTitle = littleTitle;
	}

	public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("uiConfigId", getUiConfigId())
            .append("loginImage", getLoginImage())
            .append("systemName", getSystemName())
            .append("uiTitleName", getUiTitleName())
            .append("faviconIco", getFaviconIco())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("littleTitle", getLittleTitle())
            .toString();
    }
}

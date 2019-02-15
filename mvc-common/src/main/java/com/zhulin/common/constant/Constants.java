package com.zhulin.common.constant;

/**
 * 通用常量信息
 * 
 * @author mvcboot
 */
public class Constants
{
    /**
     * UTF-8 字符集
     */
    public static final String UTF8 = "UTF-8";

    /**
     * 通用成功标识
     */
    public static final String SUCCESS = "0";

    /**
     * 通用失败标识
     */
    public static final String FAIL = "1";

    /**
     * 登录成功
     */
    public static final String LOGIN_SUCCESS = "Success";

    /**
     * 注销
     */
    public static final String LOGOUT = "Logout";

    /**
     * 登录失败
     */
    public static final String LOGIN_FAIL = "Error";
    /* 登录页面默认的Logo图片 */
    public static final String UI_CONFIG_DEFAULT_LOGIN_IMAGE_FILE_NAME = "loginImage.png";
    public static final String UI_CONFIG_DEFAULT_TITLE_ICO_FILE_NAME = "favicon.ico";
    public static final Integer UI_CONFIG_DEFAULT_ID = 1;
    public static final String UI_CONFIG_KEY = "ui";
    public static final String UI_CONFIG_DEFAULT_TITLE_NAME = "通用后台管理系统";
    public static final String UI_CONFIG_DEFAULT_LITTLE_TITLE = "通用后台管理系统";
    public static final String UI_CONFIG_DEFAULT_SYSTEM_NAME = "通用后台管理系统";

    /**
     * 自动去除表前缀
     */
    public static String AUTO_REOMVE_PRE = "true";

    /**
     * 当前记录起始索引
     */
    public static String PAGE_NUM = "pageNum";

    /**
     * 每页显示记录数
     */
    public static String PAGE_SIZE = "pageSize";

    /**
     * 排序列
     */
    public static String ORDER_BY_COLUMN = "orderByColumn";

    /**
     * 排序的方向 "desc" 或者 "asc".
     */
    public static String IS_ASC = "isAsc";
}

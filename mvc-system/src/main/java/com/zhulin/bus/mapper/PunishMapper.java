package com.zhulin.bus.mapper;

import com.zhulin.bus.domain.Punish;
import java.util.List;	

/**
 * 惩罚管理 数据层
 * 
 * @author zhulin
 * @date 2019-04-18
 */
public interface PunishMapper 
{
	/**
     * 查询惩罚管理信息
     * 
     * @param punishId 惩罚管理ID
     * @return 惩罚管理信息
     */
	public Punish selectPunishById(String punishId);
	
	/**
     * 查询惩罚管理列表
     * 
     * @param punish 惩罚管理信息
     * @return 惩罚管理集合
     */
	public List<Punish> selectPunishList(Punish punish);
	
	/**
     * 新增惩罚管理
     * 
     * @param punish 惩罚管理信息
     * @return 结果
     */
	public int insertPunish(Punish punish);
	
	/**
     * 修改惩罚管理
     * 
     * @param punish 惩罚管理信息
     * @return 结果
     */
	public int updatePunish(Punish punish);
	
	/**
     * 删除惩罚管理
     * 
     * @param punishId 惩罚管理ID
     * @return 结果
     */
	public int deletePunishById(String punishId);
	
	/**
     * 批量删除惩罚管理
     * 
     * @param punishIds 需要删除的数据ID
     * @return 结果
     */
	public int deletePunishByIds(String[] punishIds);
	
}
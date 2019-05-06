package com.zhulin.bus.service;

import com.zhulin.bus.domain.Accident;

import java.util.List;

/**
 * 事故管理 服务层
 * 
 * @author zhulin
 * @date 2019-04-19
 */
public interface IAccidentService 
{
	/**
     * 查询事故管理信息
     * 
     * @param accidentId 事故管理ID
     * @return 事故管理信息
     */
	public Accident selectAccidentById(String accidentId);
	
	/**
     * 查询事故管理列表
     * 
     * @param accident 事故管理信息
     * @return 事故管理集合
     */
	public List<Accident> selectAccidentList(Accident accident);
	
	/**
     * 新增事故管理
     * 
     * @param accident 事故管理信息
     * @return 结果
     */
	public int insertAccident(Accident accident);
	
	/**
     * 修改事故管理
     * 
     * @param accident 事故管理信息
     * @return 结果
     */
	public int updateAccident(Accident accident);
		
	/**
     * 删除事故管理信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAccidentByIds(String ids);

    List<Accident> selectAccidentByTypeId(String accidentType);

    List<Accident> selectAccidentByPunishId(String punishId);
}

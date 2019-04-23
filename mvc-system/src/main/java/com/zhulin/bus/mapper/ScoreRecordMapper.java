package com.zhulin.bus.mapper;

import com.zhulin.bus.domain.ScoreRecord;
import java.util.List;	

/**
 * 规则记录管理 数据层
 * 
 * @author zhulin
 * @date 2019-04-22
 */
public interface ScoreRecordMapper 
{
	/**
     * 查询规则记录管理信息
     * 
     * @param scoreRecordId 规则记录管理ID
     * @return 规则记录管理信息
     */
	public ScoreRecord selectScoreRecordById(String scoreRecordId);
	
	/**
     * 查询规则记录管理列表
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 规则记录管理集合
     */
	public List<ScoreRecord> selectScoreRecordList(ScoreRecord scoreRecord);
	
	/**
     * 新增规则记录管理
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 结果
     */
	public int insertScoreRecord(ScoreRecord scoreRecord);
	
	/**
     * 修改规则记录管理
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 结果
     */
	public int updateScoreRecord(ScoreRecord scoreRecord);
	
	/**
     * 删除规则记录管理
     * 
     * @param scoreRecordId 规则记录管理ID
     * @return 结果
     */
	public int deleteScoreRecordById(String scoreRecordId);
	
	/**
     * 批量删除规则记录管理
     * 
     * @param scoreRecordIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteScoreRecordByIds(String[] scoreRecordIds);
	
}
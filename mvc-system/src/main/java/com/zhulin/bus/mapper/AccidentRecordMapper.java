package com.zhulin.bus.mapper;

import com.zhulin.bus.domain.AccidentRecord;
import java.util.List;	

/**
 * 事故记录 数据层
 * 
 * @author zhulin
 * @date 2019-04-19
 */
public interface AccidentRecordMapper 
{
	/**
     * 查询事故记录信息
     * 
     * @param accidentRecordId 事故记录ID
     * @return 事故记录信息
     */
	public AccidentRecord selectAccidentRecordById(String accidentRecordId);
	
	/**
     * 查询事故记录列表
     * 
     * @param accidentRecord 事故记录信息
     * @return 事故记录集合
     */
	public List<AccidentRecord> selectAccidentRecordList(AccidentRecord accidentRecord);
	
	/**
     * 新增事故记录
     * 
     * @param accidentRecord 事故记录信息
     * @return 结果
     */
	public int insertAccidentRecord(AccidentRecord accidentRecord);
	
	/**
     * 修改事故记录
     * 
     * @param accidentRecord 事故记录信息
     * @return 结果
     */
	public int updateAccidentRecord(AccidentRecord accidentRecord);
	
	/**
     * 删除事故记录
     * 
     * @param accidentRecordId 事故记录ID
     * @return 结果
     */
	public int deleteAccidentRecordById(String accidentRecordId);
	
	/**
     * 批量删除事故记录
     * 
     * @param accidentRecordIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteAccidentRecordByIds(String[] accidentRecordIds);
	
}
package com.zhulin.bus.service;

import com.zhulin.bus.domain.AccidentRecord;
import java.util.List;

/**
 * 事故记录 服务层
 * 
 * @author zhulin
 * @date 2019-04-19
 */
public interface IAccidentRecordService 
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
     * 删除事故记录信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAccidentRecordByIds(String ids);
	
}

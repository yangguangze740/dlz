package com.zhulin.bus.service.impl;

import java.sql.Date;
import java.util.List;

import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.domain.Punish;
import com.zhulin.bus.mapper.AccidentMapper;
import com.zhulin.bus.mapper.PunishMapper;
import com.zhulin.common.utils.PrimaryKeyUtil;
import com.zhulin.system.domain.SysPost;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.mapper.SysPostMapper;
import com.zhulin.system.mapper.SysUserMapper;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.AccidentRecordMapper;
import com.zhulin.bus.domain.AccidentRecord;
import com.zhulin.bus.service.IAccidentRecordService;
import com.zhulin.common.support.Convert;

/**
 * 事故记录 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-19
 */
@Service
public class AccidentRecordServiceImpl implements IAccidentRecordService 
{
	@Autowired
	private AccidentRecordMapper accidentRecordMapper;
	@Autowired
	private AccidentMapper accidentMapper;
	@Autowired
	private SysUserMapper sysUserMapper;
	@Autowired
	private PunishMapper punishMapper;

	/**
     * 查询事故记录信息
     * 
     * @param accidentRecordId 事故记录ID
     * @return 事故记录信息
     */
    @Override
	public AccidentRecord selectAccidentRecordById(String accidentRecordId)
	{
	    return accidentRecordMapper.selectAccidentRecordById(accidentRecordId);
	}
	
	/**
     * 查询事故记录列表
     * 
     * @param accidentRecord 事故记录信息
     * @return 事故记录集合
     */
	@Override
	public List<AccidentRecord> selectAccidentRecordList(AccidentRecord accidentRecord)
	{
	    return accidentRecordMapper.selectAccidentRecordList(accidentRecord);
	}
	
    /**
     * 新增事故记录
     * 
     * @param accidentRecord 事故记录信息
     * @return 结果
     */
	@Override
	public int insertAccidentRecord(AccidentRecord accidentRecord)
	{
		Accident accident = accidentMapper.selectAccidentById(accidentRecord.getAccidentId());
		SysUser sysUser = sysUserMapper.selectUserById(Long.parseLong(accidentRecord.getUserId()));
		Punish punish = punishMapper.selectPunishById(accident.getPunishId());

		Date startTime = accidentRecord.getStartTime();
		DateTime dateTime = new DateTime(startTime.getTime());
		Date stopTime = new Date(dateTime.plusMonths(punish.getMonthLength()).toDate().getTime());

		accidentRecord.setAccidentTypeId(accident.getAccidentTypeId());
		accidentRecord.setDeptId(String.valueOf(sysUser.getDeptId()));
		accidentRecord.setAccidentRecordId(PrimaryKeyUtil.uuidPrimaryKey());
		accidentRecord.setPunishId(accident.getPunishId());
		accidentRecord.setStopTime(stopTime);
	    return accidentRecordMapper.insertAccidentRecord(accidentRecord);
	}
	
	/**
     * 修改事故记录
     * 
     * @param accidentRecord 事故记录信息
     * @return 结果
     */
	@Override
	public int updateAccidentRecord(AccidentRecord accidentRecord)
	{
		Accident accident = accidentMapper.selectAccidentById(accidentRecord.getAccidentId());
		SysUser sysUser = sysUserMapper.selectUserById(Long.parseLong(accidentRecord.getUserId()));
		Punish punish = punishMapper.selectPunishById(accident.getPunishId());

		Date startTime = accidentRecord.getStartTime();
		DateTime dateTime = new DateTime(startTime.getTime());
		dateTime.plusMonths(punish.getMonthLength());
		Date stopTime = new Date(dateTime.plusMonths(5).toDate().getTime());

		accidentRecord.setAccidentTypeId(accident.getAccidentTypeId());
		accidentRecord.setDeptId(String.valueOf(sysUser.getDeptId()));
		accidentRecord.setPunishId(accident.getPunishId());
		accidentRecord.setStopTime(stopTime);
	    return accidentRecordMapper.updateAccidentRecord(accidentRecord);
	}

	/**
     * 删除事故记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAccidentRecordByIds(String ids)
	{
		return accidentRecordMapper.deleteAccidentRecordByIds(Convert.toStrArray(ids));
	}
	
}

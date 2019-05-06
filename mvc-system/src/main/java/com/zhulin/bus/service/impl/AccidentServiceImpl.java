package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.common.utils.PrimaryKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.AccidentMapper;
import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.service.IAccidentService;
import com.zhulin.common.support.Convert;

/**
 * 事故管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-19
 */
@Service
public class AccidentServiceImpl implements IAccidentService 
{
	@Autowired
	private AccidentMapper accidentMapper;

	/**
     * 查询事故管理信息
     * 
     * @param accidentId 事故管理ID
     * @return 事故管理信息
     */
    @Override
	public Accident selectAccidentById(String accidentId)
	{
	    return accidentMapper.selectAccidentById(accidentId);
	}
	
	/**
     * 查询事故管理列表
     * 
     * @param accident 事故管理信息
     * @return 事故管理集合
     */
	@Override
	public List<Accident> selectAccidentList(Accident accident)
	{
	    return accidentMapper.selectAccidentList(accident);
	}
	
    /**
     * 新增事故管理
     * 
     * @param accident 事故管理信息
     * @return 结果
     */
	@Override
	public int insertAccident(Accident accident)
	{
		accident.setAccidentId(PrimaryKeyUtil.uuidPrimaryKey());
	    return accidentMapper.insertAccident(accident);
	}
	
	/**
     * 修改事故管理
     * 
     * @param accident 事故管理信息
     * @return 结果
     */
	@Override
	public int updateAccident(Accident accident)
	{
	    return accidentMapper.updateAccident(accident);
	}

	/**
     * 删除事故管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAccidentByIds(String ids)
	{
		return accidentMapper.deleteAccidentByIds(Convert.toStrArray(ids));
	}

	@Override
	public List<Accident> selectAccidentByTypeId(String accidentType) {
		return accidentMapper.selectAccidentByTypeId(accidentType);
	}

	@Override
	public List<Accident> selectAccidentByPunishId(String punishId) {
		return accidentMapper.selectAccidentByPunishId(punishId);
	}

}

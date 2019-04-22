package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.common.utils.PrimaryKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.AccidentTypeMapper;
import com.zhulin.bus.domain.AccidentType;
import com.zhulin.bus.service.IAccidentTypeService;
import com.zhulin.common.support.Convert;

/**
 * 事故类别管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-18
 */
@Service
public class AccidentTypeServiceImpl implements IAccidentTypeService 
{
	@Autowired
	private AccidentTypeMapper accidentTypeMapper;

	/**
     * 查询事故类别管理信息
     * 
     * @param accidentTypeId 事故类别管理ID
     * @return 事故类别管理信息
     */
    @Override
	public AccidentType selectAccidentTypeById(String accidentTypeId)
	{
	    return accidentTypeMapper.selectAccidentTypeById(accidentTypeId);
	}
	
	/**
     * 查询事故类别管理列表
     * 
     * @param accidentType 事故类别管理信息
     * @return 事故类别管理集合
     */
	@Override
	public List<AccidentType> selectAccidentTypeList(AccidentType accidentType)
	{
	    return accidentTypeMapper.selectAccidentTypeList(accidentType);
	}
	
    /**
     * 新增事故类别管理
     * 
     * @param accidentType 事故类别管理信息
     * @return 结果
     */
	@Override
	public int insertAccidentType(AccidentType accidentType)
	{
		accidentType.setAccidentTypeId(PrimaryKeyUtil.uuidPrimaryKey());
	    return accidentTypeMapper.insertAccidentType(accidentType);
	}
	
	/**
     * 修改事故类别管理
     * 
     * @param accidentType 事故类别管理信息
     * @return 结果
     */
	@Override
	public int updateAccidentType(AccidentType accidentType)
	{
	    return accidentTypeMapper.updateAccidentType(accidentType);
	}

	/**
     * 删除事故类别管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAccidentTypeByIds(String ids)
	{
		return accidentTypeMapper.deleteAccidentTypeByIds(Convert.toStrArray(ids));
	}
	
}

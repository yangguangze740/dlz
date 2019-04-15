package com.zhulin.bus.service;

import com.zhulin.bus.domain.AccidentType;
import java.util.List;

/**
 * 事故类别管理 服务层
 *
 * @author zhulin
 * @date 2019-04-10
 */
public interface IAccidentTypeService
{
    /**
     * 查询事故类别管理信息
     *
     * @param accidentTypeId 事故类别管理ID
     * @return 事故类别管理信息
     */
    public AccidentType selectAccidentTypeById(String accidentTypeId);

    /**
     * 查询事故类别管理列表
     *
     * @param accidentType 事故类别管理信息
     * @return 事故类别管理集合
     */
    public List<AccidentType> selectAccidentTypeList(AccidentType accidentType);

    /**
     * 新增事故类别管理
     *
     * @param accidentType 事故类别管理信息
     * @return 结果
     */
    public int insertAccidentType(AccidentType accidentType);

    /**
     * 修改事故类别管理
     *
     * @param accidentType 事故类别管理信息
     * @return 结果
     */
    public int updateAccidentType(AccidentType accidentType);

    /**
     * 删除事故类别管理信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAccidentTypeByIds(String ids);

}

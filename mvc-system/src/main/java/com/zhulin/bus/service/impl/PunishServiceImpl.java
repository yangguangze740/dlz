package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.common.utils.PrimaryKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.PunishMapper;
import com.zhulin.bus.domain.Punish;
import com.zhulin.bus.service.IPunishService;
import com.zhulin.common.support.Convert;

/**
 * 惩罚管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-15
 */
@Service
public class PunishServiceImpl implements IPunishService 
{
	@Autowired
	private PunishMapper punishMapper;

	/**
     * 查询惩罚管理信息
     * 
     * @param punishId 惩罚管理ID
     * @return 惩罚管理信息
     */
    @Override
	public Punish selectPunishById(String punishId)
	{
	    return punishMapper.selectPunishById(punishId);
	}
	
	/**
     * 查询惩罚管理列表
     * 
     * @param punish 惩罚管理信息
     * @return 惩罚管理集合
     */
	@Override
	public List<Punish> selectPunishList(Punish punish)
	{
	    return punishMapper.selectPunishList(punish);
	}
	
    /**
     * 新增惩罚管理
     * 
     * @param punish 惩罚管理信息
     * @return 结果
     */
	@Override
	public int insertPunish(Punish punish)
	{
		punish.setPunishId(PrimaryKeyUtil.uuidPrimaryKey());
	    return punishMapper.insertPunish(punish);
	}
	
	/**
     * 修改惩罚管理
     * 
     * @param punish 惩罚管理信息
     * @return 结果
     */
	@Override
	public int updatePunish(Punish punish)
	{
		return punishMapper.updatePunish(punish);
	}

	/**
     * 删除惩罚管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePunishByIds(String ids)
	{
		return punishMapper.deletePunishByIds(Convert.toStrArray(ids));
	}
	
}

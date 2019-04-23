package com.zhulin.bus.service.impl;

import java.util.List;

import com.zhulin.bus.domain.Accident;
import com.zhulin.bus.domain.Rule;
import com.zhulin.bus.mapper.AccidentMapper;
import com.zhulin.bus.mapper.RuleMapper;
import com.zhulin.common.utils.PrimaryKeyUtil;
import com.zhulin.system.domain.SysUser;
import com.zhulin.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhulin.bus.mapper.ScoreRecordMapper;
import com.zhulin.bus.domain.ScoreRecord;
import com.zhulin.bus.service.IScoreRecordService;
import com.zhulin.common.support.Convert;

/**
 * 规则记录管理 服务层实现
 * 
 * @author zhulin
 * @date 2019-04-22
 */
@Service
public class ScoreRecordServiceImpl implements IScoreRecordService 
{
	@Autowired
	private ScoreRecordMapper scoreRecordMapper;
	@Autowired
	private SysUserMapper sysUserMapper;
	@Autowired
	private RuleMapper ruleMapper;

	/**
     * 查询规则记录管理信息
     * 
     * @param scoreRecordId 规则记录管理ID
     * @return 规则记录管理信息
     */
    @Override
	public ScoreRecord selectScoreRecordById(String scoreRecordId)
	{
	    return scoreRecordMapper.selectScoreRecordById(scoreRecordId);
	}
	
	/**
     * 查询规则记录管理列表
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 规则记录管理集合
     */
	@Override
	public List<ScoreRecord> selectScoreRecordList(ScoreRecord scoreRecord)
	{
	    return scoreRecordMapper.selectScoreRecordList(scoreRecord);
	}
	
    /**
     * 新增规则记录管理
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 结果
     */
	@Override
	public int insertScoreRecord(ScoreRecord scoreRecord)
	{
		scoreRecord.setScoreRecordId(PrimaryKeyUtil.uuidPrimaryKey());

		SysUser sysUser = sysUserMapper.selectUserById(Long.parseLong(scoreRecord.getUserId()));
		Rule rule = ruleMapper.selectRuleById(scoreRecord.getRuleId());
		int score = sysUser.getUserScore() + rule.getScore();
		sysUser.setUserScore(score);

		scoreRecord.setRuleTypeId(rule.getRuleTypeId());
		int updateSystemUserScore = sysUserMapper.updateUser(sysUser);

	    return scoreRecordMapper.insertScoreRecord(scoreRecord);
	}
	
	/**
     * 修改规则记录管理
     * 
     * @param scoreRecord 规则记录管理信息
     * @return 结果
     */
	@Override
	public int updateScoreRecord(ScoreRecord scoreRecord)
	{
	    Rule rule = ruleMapper.selectRuleById(scoreRecord.getRuleId());
	    scoreRecord.setRuleTypeId(rule.getRuleTypeId());
		return scoreRecordMapper.updateScoreRecord(scoreRecord);
	}

	/**
     * 删除规则记录管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteScoreRecordByIds(String ids)
	{
		return scoreRecordMapper.deleteScoreRecordByIds(Convert.toStrArray(ids));
	}
	
}

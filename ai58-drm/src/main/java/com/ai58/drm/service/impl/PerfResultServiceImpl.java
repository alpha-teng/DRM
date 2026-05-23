package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.PerfResultMapper;
import com.ai58.drm.domain.PerfResult;
import com.ai58.drm.service.IPerfResultService;

/**
 * PerfResult 服务层实现
 *
 * @author ai58
 */
@Service
public class PerfResultServiceImpl implements IPerfResultService
{
    @Autowired
    private PerfResultMapper perfresultMapper;

    /**
     * 查询PerfResult信息
     *
     * @param resultId PerfResultID
     * @return PerfResult信息
     */
    @Override
    public PerfResult selectPerfResultById(Long resultId)
    {
        PerfResult entity = new PerfResult();
        entity.setResultId(resultId);
        return perfresultMapper.selectPerfResult(entity);
    }

    /**
     * 查询PerfResult列表
     *
     * @param perfresult PerfResult信息
     * @return PerfResult集合
     */
    @Override
    public List<PerfResult> selectPerfResultList(PerfResult perfresult)
    {
        return perfresultMapper.selectPerfResultList(perfresult);
    }

    /**
     * 新增PerfResult
     *
     * @param perfresult PerfResult信息
     * @return 结果
     */
    @Override
    public int insertPerfResult(PerfResult perfresult)
    {
        return perfresultMapper.insertPerfResult(perfresult);
    }

    /**
     * 修改PerfResult
     *
     * @param perfresult PerfResult信息
     * @return 结果
     */
    @Override
    public int updatePerfResult(PerfResult perfresult)
    {
        return perfresultMapper.updatePerfResult(perfresult);
    }

    /**
     * 删除PerfResult
     *
     * @param resultId PerfResultID
     * @return 结果
     */
    @Override
    public int deletePerfResultById(Long resultId)
    {
        return perfresultMapper.deletePerfResultById(resultId);
    }

    /**
     * 批量删除PerfResult
     *
     * @param resultIds 需要删除的PerfResultID
     * @return 结果
     */
    @Override
    public int deletePerfResultByIds(Long[] resultIds)
    {
        return perfresultMapper.deletePerfResultByIds(resultIds);
    }
}

package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.PerfResult;

/**
 * PerfResult 服务层
 *
 * @author ai58
 */
public interface IPerfResultService
{
    /**
     * 查询PerfResult信息
     *
     * @param resultId PerfResultID
     * @return PerfResult信息
     */
    public PerfResult selectPerfResultById(Long resultId);

    /**
     * 查询PerfResult列表
     *
     * @param perfresult PerfResult信息
     * @return PerfResult集合
     */
    public List<PerfResult> selectPerfResultList(PerfResult perfresult);

    /**
     * 新增PerfResult
     *
     * @param perfresult PerfResult信息
     * @return 结果
     */
    public int insertPerfResult(PerfResult perfresult);

    /**
     * 修改PerfResult
     *
     * @param perfresult PerfResult信息
     * @return 结果
     */
    public int updatePerfResult(PerfResult perfresult);

    /**
     * 删除PerfResult
     *
     * @param resultId PerfResultID
     * @return 结果
     */
    public int deletePerfResultById(Long resultId);

    /**
     * 批量删除PerfResult
     *
     * @param resultIds 需要删除的PerfResultID
     * @return 结果
     */
    public int deletePerfResultByIds(Long[] resultIds);
}

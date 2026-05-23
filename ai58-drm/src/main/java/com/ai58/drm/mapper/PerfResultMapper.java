package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.PerfResult;

/**
 * 绩效结果 数据层
 *
 * @author ai58
 */
public interface PerfResultMapper {

    public PerfResult selectPerfResult(PerfResult result);
    public List<PerfResult> selectPerfResultList(PerfResult result);
    public int insertPerfResult(PerfResult result);
    public int updatePerfResult(PerfResult result);
    public int deletePerfResultById(Long resultId);
    public int deletePerfResultByIds(Long[] resultIds);
}

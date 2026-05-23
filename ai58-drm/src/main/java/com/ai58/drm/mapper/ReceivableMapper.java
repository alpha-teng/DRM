package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.Receivable;

/**
 * 应收账款 数据层
 *
 * @author ai58
 */
public interface ReceivableMapper {

    public Receivable selectReceivable(Receivable receivable);
    public List<Receivable> selectReceivableList(Receivable receivable);
    public int insertReceivable(Receivable receivable);
    public int updateReceivable(Receivable receivable);
    public int deleteReceivableById(Long receivableId);
    public int deleteReceivableByIds(Long[] receivableIds);
}

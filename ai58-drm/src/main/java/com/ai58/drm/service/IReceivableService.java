package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.Receivable;

/**
 * Receivable 服务层
 *
 * @author ai58
 */
public interface IReceivableService
{
    /**
     * 查询Receivable信息
     *
     * @param receivableId ReceivableID
     * @return Receivable信息
     */
    public Receivable selectReceivableById(Long receivableId);

    /**
     * 查询Receivable列表
     *
     * @param receivable Receivable信息
     * @return Receivable集合
     */
    public List<Receivable> selectReceivableList(Receivable receivable);

    /**
     * 新增Receivable
     *
     * @param receivable Receivable信息
     * @return 结果
     */
    public int insertReceivable(Receivable receivable);

    /**
     * 修改Receivable
     *
     * @param receivable Receivable信息
     * @return 结果
     */
    public int updateReceivable(Receivable receivable);

    /**
     * 删除Receivable
     *
     * @param receivableId ReceivableID
     * @return 结果
     */
    public int deleteReceivableById(Long receivableId);

    /**
     * 批量删除Receivable
     *
     * @param receivableIds 需要删除的ReceivableID
     * @return 结果
     */
    public int deleteReceivableByIds(Long[] receivableIds);
}

package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.ReceivableMapper;
import com.ai58.drm.domain.Receivable;
import com.ai58.drm.service.IReceivableService;

/**
 * Receivable 服务层实现
 *
 * @author ai58
 */
@Service
public class ReceivableServiceImpl implements IReceivableService
{
    @Autowired
    private ReceivableMapper receivableMapper;

    /**
     * 查询Receivable信息
     *
     * @param receivableId ReceivableID
     * @return Receivable信息
     */
    @Override
    public Receivable selectReceivableById(Long receivableId)
    {
        Receivable entity = new Receivable();
        entity.setReceivableId(receivableId);
        return receivableMapper.selectReceivable(entity);
    }

    /**
     * 查询Receivable列表
     *
     * @param receivable Receivable信息
     * @return Receivable集合
     */
    @Override
    public List<Receivable> selectReceivableList(Receivable receivable)
    {
        return receivableMapper.selectReceivableList(receivable);
    }

    /**
     * 新增Receivable
     *
     * @param receivable Receivable信息
     * @return 结果
     */
    @Override
    public int insertReceivable(Receivable receivable)
    {
        return receivableMapper.insertReceivable(receivable);
    }

    /**
     * 修改Receivable
     *
     * @param receivable Receivable信息
     * @return 结果
     */
    @Override
    public int updateReceivable(Receivable receivable)
    {
        return receivableMapper.updateReceivable(receivable);
    }

    /**
     * 删除Receivable
     *
     * @param receivableId ReceivableID
     * @return 结果
     */
    @Override
    public int deleteReceivableById(Long receivableId)
    {
        return receivableMapper.deleteReceivableById(receivableId);
    }

    /**
     * 批量删除Receivable
     *
     * @param receivableIds 需要删除的ReceivableID
     * @return 结果
     */
    @Override
    public int deleteReceivableByIds(Long[] receivableIds)
    {
        return receivableMapper.deleteReceivableByIds(receivableIds);
    }
}

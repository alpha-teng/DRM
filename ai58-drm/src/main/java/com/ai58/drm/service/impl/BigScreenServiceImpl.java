package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.BigScreenMapper;
import com.ai58.drm.domain.BigScreen;
import com.ai58.drm.service.IBigScreenService;

/**
 * BigScreen 服务层实现
 *
 * @author ai58
 */
@Service
public class BigScreenServiceImpl implements IBigScreenService
{
    @Autowired
    private BigScreenMapper bigscreenMapper;

    /**
     * 查询BigScreen信息
     *
     * @param screenId BigScreenID
     * @return BigScreen信息
     */
    @Override
    public BigScreen selectBigScreenById(Long screenId)
    {
        BigScreen entity = new BigScreen();
        entity.setScreenId(screenId);
        return bigscreenMapper.selectBigScreen(entity);
    }

    /**
     * 查询BigScreen列表
     *
     * @param bigscreen BigScreen信息
     * @return BigScreen集合
     */
    @Override
    public List<BigScreen> selectBigScreenList(BigScreen bigscreen)
    {
        return bigscreenMapper.selectBigScreenList(bigscreen);
    }

    /**
     * 新增BigScreen
     *
     * @param bigscreen BigScreen信息
     * @return 结果
     */
    @Override
    public int insertBigScreen(BigScreen bigscreen)
    {
        return bigscreenMapper.insertBigScreen(bigscreen);
    }

    /**
     * 修改BigScreen
     *
     * @param bigscreen BigScreen信息
     * @return 结果
     */
    @Override
    public int updateBigScreen(BigScreen bigscreen)
    {
        return bigscreenMapper.updateBigScreen(bigscreen);
    }

    /**
     * 删除BigScreen
     *
     * @param screenId BigScreenID
     * @return 结果
     */
    @Override
    public int deleteBigScreenById(Long screenId)
    {
        return bigscreenMapper.deleteBigScreenById(screenId);
    }

    /**
     * 批量删除BigScreen
     *
     * @param screenIds 需要删除的BigScreenID
     * @return 结果
     */
    @Override
    public int deleteBigScreenByIds(Long[] screenIds)
    {
        return bigscreenMapper.deleteBigScreenByIds(screenIds);
    }
}

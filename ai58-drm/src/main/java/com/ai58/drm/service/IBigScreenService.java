package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.BigScreen;

/**
 * BigScreen 服务层
 *
 * @author ai58
 */
public interface IBigScreenService
{
    /**
     * 查询BigScreen信息
     *
     * @param screenId BigScreenID
     * @return BigScreen信息
     */
    public BigScreen selectBigScreenById(Long screenId);

    /**
     * 查询BigScreen列表
     *
     * @param bigscreen BigScreen信息
     * @return BigScreen集合
     */
    public List<BigScreen> selectBigScreenList(BigScreen bigscreen);

    /**
     * 新增BigScreen
     *
     * @param bigscreen BigScreen信息
     * @return 结果
     */
    public int insertBigScreen(BigScreen bigscreen);

    /**
     * 修改BigScreen
     *
     * @param bigscreen BigScreen信息
     * @return 结果
     */
    public int updateBigScreen(BigScreen bigscreen);

    /**
     * 删除BigScreen
     *
     * @param screenId BigScreenID
     * @return 结果
     */
    public int deleteBigScreenById(Long screenId);

    /**
     * 批量删除BigScreen
     *
     * @param screenIds 需要删除的BigScreenID
     * @return 结果
     */
    public int deleteBigScreenByIds(Long[] screenIds);
}

package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.BigScreen;

/**
 * 大屏配置 数据层
 *
 * @author ai58
 */
public interface BigScreenMapper {

    /**
     * 查询大屏配置信息
     */
    public BigScreen selectBigScreen(BigScreen bigScreen);

    /**
     * 查询大屏配置列表
     */
    public List<BigScreen> selectBigScreenList(BigScreen bigScreen);

    /**
     * 新增大屏配置
     */
    public int insertBigScreen(BigScreen bigScreen);

    /**
     * 修改大屏配置
     */
    public int updateBigScreen(BigScreen bigScreen);

    /**
     * 删除大屏配置
     */
    public int deleteBigScreenById(Long screenId);

    /**
     * 批量删除大屏配置
     */
    public int deleteBigScreenByIds(Long[] screenIds);
}

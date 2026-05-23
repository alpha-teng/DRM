package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DataMapping;

/**
 * DataMapping 服务层
 *
 * @author ai58
 */
public interface IDataMappingService
{
    /**
     * 查询DataMapping信息
     *
     * @param mappingId DataMappingID
     * @return DataMapping信息
     */
    public DataMapping selectDataMappingById(Long mappingId);

    /**
     * 查询DataMapping列表
     *
     * @param datamapping DataMapping信息
     * @return DataMapping集合
     */
    public List<DataMapping> selectDataMappingList(DataMapping datamapping);

    /**
     * 新增DataMapping
     *
     * @param datamapping DataMapping信息
     * @return 结果
     */
    public int insertDataMapping(DataMapping datamapping);

    /**
     * 修改DataMapping
     *
     * @param datamapping DataMapping信息
     * @return 结果
     */
    public int updateDataMapping(DataMapping datamapping);

    /**
     * 删除DataMapping
     *
     * @param mappingId DataMappingID
     * @return 结果
     */
    public int deleteDataMappingById(Long mappingId);

    /**
     * 批量删除DataMapping
     *
     * @param mappingIds 需要删除的DataMappingID
     * @return 结果
     */
    public int deleteDataMappingByIds(Long[] mappingIds);
}

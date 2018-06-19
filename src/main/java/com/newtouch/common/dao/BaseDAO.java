package com.newtouch.common.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseDAO<T> {
	
	/**
	 * 根据ID获取对象.
	 */
	public abstract T queryByPrimaryKey(Serializable id);

	public List<T> queryByBatch(Map<String, Object> params);

	/**
	 * 新增记录，主键通过sequence获取
	 * 
	 * @param o
	 */
	public abstract void insert(Object o);

	/**
	 * @Title: insertBatchByOneDB
	 * @Description: 全字段批量保存，通过一次DB操作完成(无主键)。
	 * @param modelList
	 * @Return: void
	 * @Throws:
	 * @param list
	 */
	public void insertByBatch(List<T> list);
	/**
	 * 根据ID移除对象.
	 */
	public abstract void delete(Serializable id, String...otherArgs);
	
	/**
	 * 
	* @Title: deleteBatchByOneDB
	* @Description: 批量删除，通过一次DB操作完成。
	* @Return: void
	* @Throws: 
	 */
	public abstract void deleteByBatch(String[] idArr);
	
	/**
	 * 数据更新
	 * 
	 * @param o
	 */
	public abstract void update(Object o);
	
	/**
	 * 获取全部对象.
	 */
	public abstract List<T> listAll();
	
	
}

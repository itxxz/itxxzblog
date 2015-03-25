package com.itxxz.framework.base;

import java.util.List;

public interface BaseMapper<T extends AbstractDO> {

	int insert(T entity);

	void delete(T entity);
	
	void update(T entity);
	
	List<T> findAll();
	
}

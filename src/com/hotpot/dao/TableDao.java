package com.hotpot.dao;

import java.util.List;

import com.hotpot.model.Table;

public interface TableDao {
   
	public List<Table> getAllTables(int start,int end);
	
	public Integer allTableCount();
	
	public Integer changeStatusToUsing(Integer id);
}

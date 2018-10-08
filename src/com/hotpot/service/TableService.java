package com.hotpot.service;

import java.util.List;

import com.hotpot.model.Table;


public interface TableService {

	public List<Table> getAllTables(int start,int end);
	
	public Integer allTableCount();
	
	public Boolean changeStatusToUsing(Integer id);
}

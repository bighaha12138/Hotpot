package com.hotpot.dao;

import java.util.List;

import com.hotpot.model.Staff;

public interface StaffDao {

	public List<Staff> getAllStaffInfo(int start,int end);
	
	public long allStaffCount();
	
	public Staff getStaffById(Integer id);
	
	public Integer updateStaffInfo(Staff staff); 
	
	public Integer deleteStaffInfo(Integer id); 
	
	public Integer insertStaffInfo(Staff staff); 
	
	public Integer getoutSalary(Integer id);
	
	//public List<FoService> getAllTables();
}

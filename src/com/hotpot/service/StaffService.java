package com.hotpot.service;

import java.util.List;

import com.hotpot.model.Staff;

public interface StaffService {

	public List<Staff> getAllStaffInfo(int start,int end);
	
	public int  allStaffCount();
	
	public Staff getStaffById(Integer id);
	
	public boolean updateStaffInfo(Staff staff);
	
	public boolean deleteStaffInfo(Integer id); 
	
	public boolean insertStaffInfo(Staff staff);
	
	public boolean getoutSalary(Integer id);
}

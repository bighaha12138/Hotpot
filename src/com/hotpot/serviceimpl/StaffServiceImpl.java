package com.hotpot.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hotpot.dao.StaffDao;
import com.hotpot.model.Staff;
import com.hotpot.service.StaffService;

@Service("staffService")
public class StaffServiceImpl implements StaffService{

	@Autowired
	@Qualifier("staffDao")
	private StaffDao staffDao;
	
	@Override
	public List<Staff> getAllStaffInfo(int start,int end) {
		return staffDao.getAllStaffInfo(start, end);
	}

	@Override
	public int allStaffCount() {
		return (int) staffDao.allStaffCount();
	}

	@Override
	public Staff getStaffById(Integer id) {
		return staffDao.getStaffById(id);
	}

	@Override
	public boolean updateStaffInfo(Staff staff) {
		boolean result = false;
		System.out.println(staff);
		if (staffDao.updateStaffInfo(staff) != null) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean deleteStaffInfo(Integer id) {
		boolean result = false;
		if (staffDao.deleteStaffInfo(id)!=null) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean insertStaffInfo(Staff staff) {
		boolean result = false;
		if (staffDao.insertStaffInfo(staff)!=null) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean getoutSalary(Integer id) {
		boolean result = false;
		if (staffDao.getoutSalary(id) !=null) {
			result = true; 
		}
		return result;
	}



}

package com.hotpot.model;

public class Staff {

	private int staffId;
	private String staffPosition;
	private String staffName;
	private String staffSex;
	private String staffPhone;
	private String staffPassword;
	private String staffSalary;
	private String isProvided;

	public String getIsProvided() {
		return isProvided;
	}

	public void setIsProvided(String isProvided) {
		this.isProvided = isProvided;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffPosition() {
		return staffPosition;
	}

	public void setStaffPosition(String staffPosition) {
		this.staffPosition = staffPosition;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getStaffSex() {
		return staffSex;
	}

	public void setStaffSex(String staffSex) {
		this.staffSex = staffSex;
	}

	public String getStaffPhone() {
		return staffPhone;
	}

	public void setStaffPhone(String staffPhone) {
		this.staffPhone = staffPhone;
	}

	public String getStaffPassword() {
		return staffPassword;
	}

	public void setStaffPassword(String staffPassword) {
		this.staffPassword = staffPassword;
	}

	public String getStaffSalary() {
		return staffSalary;
	}

	public void setStaffSalary(String staffSalary) {
		this.staffSalary = staffSalary;
	}

	@Override
	public String toString() {
		return "Staff [staffId=" + staffId + ", staffPosition=" + staffPosition + ", staffName=" + staffName
				+ ", staffSex=" + staffSex + ", staffPhone=" + staffPhone + ", staffPassword=" + staffPassword
				+ ", staffSalary=" + staffSalary + "]";
	}

}

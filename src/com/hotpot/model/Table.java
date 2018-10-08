package com.hotpot.model;

public class Table {

	private int foId;
	private int tableNum;
	private String tableName;
	private int acceptableNum;
	private int status;
	
	public int getFoId() {
		return foId;
	}
	public void setFoId(int foId) {
		this.foId = foId;
	}
	public int getTableNum() {
		return tableNum;
	}
	public void setTableNum(int tableNum) {
		this.tableNum = tableNum;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public int getAcceptableNum() {
		return acceptableNum;
	}
	public void setAcceptableNum(int acceptableNum) {
		this.acceptableNum = acceptableNum;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "FoService [foId=" + foId + ", tableNum=" + tableNum + ", tableName=" + tableName + ", acceptableNum="
				+ acceptableNum + ", status=" + status + "]";
	}
	
	
	
}

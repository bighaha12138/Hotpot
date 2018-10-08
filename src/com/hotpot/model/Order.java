package com.hotpot.model;

import java.util.Arrays;

public class Order {
	 private int tableNum;
	 private String foodName;
	 private double foodSellPrice;
	 private int orderNum;
	 
	public int getTableNum() {
		return tableNum;
	}
	public void setTableNum(int tableNum) {
		this.tableNum = tableNum;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public double getFoodSellPrice() {
		return foodSellPrice;
	}
	public void setFoodSellPrice(double foodSellPrice) {
		this.foodSellPrice = foodSellPrice;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	@Override
	public String toString() {
		return "Order [tableNum=" + tableNum + ", foodName=" + foodName + ", foodSellPrice=" + foodSellPrice
				+ ", orderNum=" + orderNum + "]";
	}



	
	
	 
}

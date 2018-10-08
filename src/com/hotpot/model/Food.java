package com.hotpot.model;

public class Food {
 
	private int  foodId;
	private String foodPic;
	private String foodName;
	private double sellPrice;
	private int foodStock;
	private int foodStatus;
	
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public String getFoodPic() {
		return foodPic;
	}
	public void setFoodPic(String foodPic) {
		this.foodPic = foodPic;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public double getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(double sellPrice) {
		this.sellPrice = sellPrice;
	}
	public int getFoodStock() {
		return foodStock;
	}
	public void setFoodStock(int foodStock) {
		this.foodStock = foodStock;
	}
	public int getFoodStatus() {
		return foodStatus;
	}
	public void setFoodStatus(int foodStatus) {
		this.foodStatus = foodStatus;
	}
	
	@Override
	public String toString() {
		return "Food [foodId=" + foodId + ", foodPic=" + foodPic + ", foodName=" + foodName + ", sellPrice=" + sellPrice
				+ ", foodStock=" + foodStock + ", foodStatus=" + foodStatus + "]";
	}
	
	
	
}

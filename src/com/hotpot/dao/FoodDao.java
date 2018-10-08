package com.hotpot.dao;

import java.util.List;

import com.hotpot.model.Food;

public interface FoodDao {

	public List<Food> getAllFoods();
	
	public Integer allFoodCount();
}

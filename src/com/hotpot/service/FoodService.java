package com.hotpot.service;

import com.hotpot.model.Food;

import java.util.List;

public interface FoodService {

	public List<Food> getAllFoods(); 
	
	public Integer allFoodCount();
	
}

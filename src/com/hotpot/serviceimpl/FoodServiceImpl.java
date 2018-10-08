package com.hotpot.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hotpot.dao.FoodDao;
import com.hotpot.model.Food;
import com.hotpot.service.FoodService;

@Service("foodService")
public class FoodServiceImpl implements FoodService {

	@Autowired
	@Qualifier("foodDao")
	private FoodDao foodDao;

	@Override
	public List<Food> getAllFoods() {
		return foodDao.getAllFoods();
	}

	@Override
	public Integer allFoodCount() {
		return foodDao.allFoodCount();
	}
	


}



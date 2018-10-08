package com.hotpot.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hotpot.dao.OrderDao;
import com.hotpot.model.Order;
import com.hotpot.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	@Qualifier("orderDao")
	private OrderDao orderDao;
	
	@Override
	public Boolean addOrder(Order order) {
		boolean result = false;
		if (orderDao.addOrder(order)!=null) {
			result=true;
		}
		return result;
	}

}

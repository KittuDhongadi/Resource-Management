package com.jlcindia.dao;

import java.util.List;

import com.jlcindia.to.OrderTo;

public interface OrderDAO {

	public List getAllOrderInfo();

	public OrderTo getOrderByOrderId();


}

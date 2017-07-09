package com.jlcindia.dao;

import java.util.List;

import com.jlcindia.to.OrderTo;

public interface BookedDAO {

	public List getBookOrderInfo();

	public OrderTo getBookedByOrderId();
	
}

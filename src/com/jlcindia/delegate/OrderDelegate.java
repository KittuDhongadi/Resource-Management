package com.jlcindia.delegate;

import java.util.List;

import com.jlcindia.dao.OrderDAO;
import com.jlcindia.factory.DAOFactory;
import com.jlcindia.to.OrderTo;

public class OrderDelegate {
	private static OrderDAO orderDAO=null;
	static {
		orderDAO=DAOFactory.getOrderDAO();
			}
	public static List getAllOrderInfo() {
		
		return orderDAO.getAllOrderInfo();
	}
	public static OrderTo getOrderByOrderId(String orderId) {
		return orderDAO.getOrderByOrderId();
	}
}

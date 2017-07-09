package com.jlcindia.factory;

import com.jlcindia.dao.OrderDAO;
import com.jlcindia.dao.impl.JDBCOrderDAO;

public class DAOFactory {
	private static OrderDAO orderDAO=null;
	static
	{
		orderDAO=new JDBCOrderDAO();
	}
	public static OrderDAO getOrderDAO() {
		return orderDAO;
	}

}

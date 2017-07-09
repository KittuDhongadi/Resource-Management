package com.jlcindia.factory;

import com.jlcindia.dao.BookedDAO;
import com.jlcindia.dao.OrderDAO;
import com.jlcindia.dao.impl.JDBCBookedDAO;
import com.jlcindia.dao.impl.JDBCOrderDAO;

public class DAOFactory1 {
	private static BookedDAO bkDAO=null;
	static
	{
		bkDAO=new JDBCBookedDAO();
	}
	public static BookedDAO bookedDAO() {
		// TODO Auto-generated method stub
		return bkDAO;
	}
}


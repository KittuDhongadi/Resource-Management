package com.jlcindia.delegate;

import java.util.List;

import com.jlcindia.dao.BookedDAO;
import com.jlcindia.factory.DAOFactory1;
import com.jlcindia.to.OrderTo;

public class BookedDelegate {
	private static BookedDAO bkDAO=null;
	static {
		bkDAO=DAOFactory1.bookedDAO();
			}
	public static List getBookOrderInfo() {
		
		return bkDAO.getBookOrderInfo();
	}
	public static OrderTo getBookedByOrderId(String orderId) {
		return bkDAO.getBookedByOrderId();
	}
}
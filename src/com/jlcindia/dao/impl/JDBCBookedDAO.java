package com.jlcindia.dao.impl;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jlcindia.dao.BookedDAO;
import com.jlcindia.dao.OrderDAO;
import com.jlcindia.jdbc.JdbcUtil;
import com.jlcindia.to.BookedTO;
import com.jlcindia.to.OrderTo;

public  class JDBCBookedDAO implements BookedDAO {
	@SuppressWarnings("unchecked")
	public List getBookOrderInfo() {
		List orderList = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from aquired_by51";
			ps=con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				orderList = new ArrayList();

				do {
					BookedTO bto = new BookedTO();
					bto.setInstID(rs.getString(1));
					bto.setItemID(rs.getString(2));
					bto.setDateAquired(rs.getString(3));
					//oto.setDateAquired(rs.getInt(4));
					bto.setStart(rs.getString(4));
					bto.setEnd(rs.getString(5));
					bto.setPurp(rs.getString(6));
					orderList.add(bto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return orderList;
	}


	@Override
	public OrderTo getBookedByOrderId() {
		// TODO Auto-generated method stub
		return null;
	}



}


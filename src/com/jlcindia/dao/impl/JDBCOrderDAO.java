package com.jlcindia.dao.impl;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jlcindia.dao.OrderDAO;
import com.jlcindia.jdbc.JdbcUtil;
import com.jlcindia.to.OrderTo;

public class JDBCOrderDAO implements OrderDAO {
	@SuppressWarnings("unchecked")
	public List getAllOrderInfo() {
		List orderList = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			// String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			// Connection con= DriverManager.getConnection(url, "system",
			// "Kittu145");
			con = JdbcUtil.getOracleConnection();
			//String sql = "select * from items51 where item_id not in (select item_id from aquired_by51)";
			String sql = "select * from items51";
			ps=con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				orderList = new ArrayList();

				do {
					OrderTo oto = new OrderTo();
					oto.setItemID(rs.getString("ITEM_ID"));
					oto.setItemName(rs.getString("ITEM_NAME"));
					oto.setItemDept(new Integer(rs.getInt("ITEM_DNUM")).toString());
					oto.setItemcat(rs.getString("ITEM_CATEGORY"));
					oto.setItemdesc(rs.getString("ITEM_DESCRIPTION"));
					orderList.add(oto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return orderList;
	}

	@Override
	public OrderTo getOrderByOrderId() {
		// TODO Auto-generated method stub
		return null;
	}


}

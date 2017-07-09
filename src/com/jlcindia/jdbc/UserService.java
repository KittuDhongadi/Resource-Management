package com.jlcindia.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import com.jlcindia.actions.StudentDetail;
import com.jlcindia.to.UserTO;
import com.jlcindia.to.addTO;
import com.jlcindia.to.bookTO;
import com.jlcindia.to.deleteTO;

public class UserService {
	// Logger log=Logger.getLogger(UserService.class);
	public static int verifyUser(String un, String pw) {
		// log.info("UserService-verifyUser()");
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from instructor51 where inst_username=? and inst_password=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,un);
			ps.setString(2,pw);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				x = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}

	
	public static int add(addTO ato)
	{
				int x = 0;
				Connection con = null;
				PreparedStatement ps = null;
				try {
					con = JdbcUtil.getOracleConnection();
					String sql = "insert into items51 values(?,?,?,?,?)";
					ps = con.prepareStatement(sql);
					ps.setString(1, ato.getItemId());
					ps.setString(2, ato.getItemName());
					ps.setString(3,ato.getItemDept());
					ps.setString(4, ato.getCategory());
					ps.setString(5, ato.getItemDesc());
					x = ps.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JdbcUtil.cleanup(ps, con);
				}
				return x;
		
	}
	
	
	public static int book(bookTO bto)
	{
				int x = 0;
				Connection con = null;
				PreparedStatement ps = null;
				try {
					con = JdbcUtil.getOracleConnection();
					String sql = "insert into aquired_by51 values(?,?,?,?,?,?)";
					ps = con.prepareStatement(sql);
					ps.setString(1, bto.getInstId());
					ps.setString(2, bto.getItemId());
					ps.setString(3, bto.getDateAquired());
					ps.setString(4, bto.getStartTime());
					ps.setString(5, bto.getEndTime());
					ps.setString(6, bto.getPurpose());
					x = ps.executeUpdate();
					//uto.setUserId(id);
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JdbcUtil.cleanup(ps, con);
				}
				return x;
		
	}
	public static int delete1(String iid)
	{
				int x = 0;
				Connection con = null;
				PreparedStatement ps = null;
				try {
					con = JdbcUtil.getOracleConnection();
					String sql = "delete from item51 where item_id=?";
					ps = con.prepareStatement(sql);
					ps.setString(1, iid);
					x = ps.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JdbcUtil.cleanup(ps, con);
				}
				return x;
		
	}
	
	
	public static int registerUser(UserTO uto) {
		// log.info("UserService-registerUser()");
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "insert into instructor51 values(?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			
			ps.setString(1, uto.getUserId());
			ps.setString(2, uto.getFname());
			ps.setString(3, uto.getLname());
			ps.setString(4, uto.getDep());
			ps.setString(5, uto.getPhone());
			ps.setString(6, uto.getEmail());
			ps.setString(7, uto.getUsername());
			ps.setString(8, uto.getPassword());
			
			x = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(ps, con);
		}
		return x;
	}

	public static String getPasswordByEmail(String em) {
		// log.info("UserService-getPasswordByEmail()");
		String pw = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from instructor51 where inst_email=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, em);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				pw = rs.getString(8);
			}
		} catch (Exception e) {
			// log.error(e);
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return pw;
	}


	public static int verifyAdmin(String un, String pw) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from admin51 where inst_username=? and inst_password=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,un);
			ps.setString(2,pw);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				x = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}


	public static ArrayList getAllInventory() {
		// TODO Auto-generated method stub
		int x=0;
		@SuppressWarnings("rawtypes")
		ArrayList<StudentDetail> list = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from items51";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) 
			{
				System.out.println("\n"+rs.getString(1));
			}
			list = new ArrayList<StudentDetail>();

			if (rs.next()) {
			    StudentDetail studentDetail = new StudentDetail();
			    studentDetail.setId(rs.getString(1));
			    studentDetail.setFistName(rs.getString(2));
			    studentDetail.setLastName(rs.getString(3));
			    studentDetail.setSubject(rs.getString(4));
			    studentDetail.setYear(rs.getInt(5));

			    list.add(studentDetail);
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return list;
	}


	public static int returnInventory(String itemId) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "delete from aquired_by51 where item_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,itemId);
			x = ps.executeUpdate();
			//uto.setUserId(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(ps, con);
		}
		return x;
	}


	public static String getCurrentUser(String un, String pw) {
		// TODO Auto-generated method stub
		String x=null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select inst_id from instructor51 where inst_username=? and inst_password=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,un);
			ps.setString(2,pw);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				x=rs.getString("inst_id");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		
		return x;
	}


	public static int VarifyCurrentUserReturn(String user, String itemId) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from  aquired_by51 where inst_id=? and item_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,user);
			ps.setString(2,itemId);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				x = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}


	public static int Varifydelete(String iid) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from  aquired_by51 where item_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,iid);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				x = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}


	public static int delete(String iid) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "delete from items51 where item_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, iid);
			x = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(ps, con);
		}
		return x;
	}


	public static String getEmailById(String userId1) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String email="";
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select * from  instructor51 where inst_id=?";
			ps = con.prepareStatement(sql);
			
			ps.setString(1,userId1);
			rs = ps.executeQuery();
			
			if (rs.next()) 
			{
				email=rs.getString(6);
				//System.out.println("\nCurrent user"+userId1);
				//System.out.println("\nCurrent email"+rs.getString(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return email;
	}


	


	public static int checkBookingAvailability(String itemId, String instId, String dateAquired, String startTime,
			String endTime,String purpose) {
		// TODO Auto-generated method stub
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			//String sql = "select * from  aquired_by51 where item_id=? and inst_id=? and date_aquired=? and start_time=? and end_time=?";
			String sql = "select * from  aquired_by51 where inst_id=? and date_aquired=? and start_time=? and end_time=? purpose=?";
			
			ps = con.prepareStatement(sql);
			ps.setString(1,itemId);
			//ps.setString(2,instId);
			ps.setString(2,dateAquired);
			ps.setString(3,startTime);
			ps.setString(4,endTime);
			ps.setString(5,purpose);
			rs = ps.executeQuery();
			
			while (rs.next()) 
			{
				x = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}




	/*public static int getNextUserId() {
		// log.info("UserService-getNextUserId()");
		int x = 0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = JdbcUtil.getOracleConnection();
			String sql = "select max(userId)from users";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				x = rs.getInt(1);
				x = x + 2;
			}
		} catch (Exception e) {
			// log.error(e);
		} finally {
			JdbcUtil.cleanup(rs, ps, con);
		}
		return x;
	}*/

}

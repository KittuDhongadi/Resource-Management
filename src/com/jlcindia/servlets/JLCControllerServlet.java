package com.jlcindia.servlets;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jlcindia.actions.*;

public class JLCControllerServlet extends HttpServlet{
	Logger log=Logger.getLogger("JLCControllerServlet.class");
	LoginAction loginAction=null;
	JLCBaseAction action=null;
	RegisterAction regAction=null;
	ForgotPWAction fpwAction=null;
	add_inventory add=null;
	delete_inventory deAction=null;
	LogoutAction logout=null;
	adminLogin admin=null;
	booked_inventories booked=null;
	ShowInventory Show=null;
	booking book=null;
	
	all_Inventories1 all=null;
	ReturnInventory retu=null;
	public void init(ServletConfig sc)
	{
	log.info("Intialising JLCControllerServlet");
	loginAction=new LoginAction();
	regAction=new RegisterAction();
	fpwAction=new ForgotPWAction();
	add=new add_inventory();
	deAction=new delete_inventory();
	admin=new adminLogin();
	logout=new LogoutAction();
	Show=new ShowInventory();
	all=new all_Inventories1();
	book=new booking();
	retu =new ReturnInventory();
	booked=new booked_inventories();
	}
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		log.info("JLCControllerServlet is processing request");
		String URI=req.getRequestURI();
		log.info("requesting the  URI : "+URI);
		if(URI.endsWith("login.jlc"))
		{
			action=loginAction;
		}else if(URI.endsWith("register.jlc"))
		{
			action=regAction;
		}
		else if(URI.endsWith("booking.jlc"))
		{
			action=book;
		}
		else if(URI.endsWith("forgotpw.jlc"))
		{
			action=fpwAction;
		}
		else if(URI.endsWith("return.jlc"))
		{
			action=retu;
		}
		else if(URI.endsWith("show.jlc"))
		{
			action=Show;
		}
		else if(URI.endsWith("booked.jlc"))
		{
			action=booked;
		}
		else if(URI.endsWith("adding.jlc"))
		{
			action=add;
		}
		else if(URI.endsWith("delete.jlc"))
		{
			action=deAction;
		}
		else if(URI.endsWith("admin.jlc"))
		{
			action=admin;
		}
		else if(URI.endsWith("all.jlc"))
		{
			action=all;
		}
		else if(URI.endsWith("logout.jlc"))
		{
			action=logout;
		}
		String result=" ";
		try
		{
			result=action.service(req,res);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		log.info("Resultant Resource :"+result);
		RequestDispatcher rd=req.getRequestDispatcher(result);
		rd.forward(req,res);
		log.info("JLCControllerServlet processing completed");
	}
}
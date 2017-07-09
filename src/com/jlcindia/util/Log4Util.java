package com.jlcindia.util;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class Log4Util implements ServletContextListener{
	//Logger log=Logger.getLogger(Log4Util.class);
	public void contextInitialized(ServletContextEvent sce)
	{
		ServletContext ctx=sce.getServletContext();
				String path=ctx.getRealPath("/");
				
	path=path+"/logs";
	System.setProperty("log.file.location",path);
	String logfile=ctx.getRealPath("/WEB-INF/classes/log4j.properties");
	System.out.println(logfile);
	//PropertyConfigurator.configure(logfile);
	//log.info("Log4J system is initialised at container Startup");
}
public void contextDestroyed(ServletContextEvent sce)
{
}
	}

package com.jlcindia.validators;

public class JLCValidator {
	//static Logger log=logger.getLogger(JLCValidator.class);
	public static boolean validateRequired(String val) {
	//log.info("validateRequired\t":" +val);
	if(val==null || val.trim().length()==0) { return true; }
	return false;
	}
	public static boolean validateMinLength(String val,int len) {
	//log.info("validateMinLength\t": +val+"\t" +len);
	if(val.trim().length()<len) { return true; }
	return false ;
	}
	public static boolean validateMaxLength(String val,int len) {
	//log.info("validateMaxLength\t:" +val+ "\t"+ len);
	if(val.trim().length()>len) { return true;}
	return false;
	}
	public static boolean validateLength(String val,int len) {
	//log.info("validate length\t:" +val+"\t" + len);
	if(val.trim().length()!=len) { return true; }
	return false;
	}
	public static boolean validateEmail(String val) {
	//final String EMAIL_PATTERN="^[_A-Za-z0-9-\\+]+(\\.[_a-Za-z0-9-]+)*@"+"[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})S";
	//if(!val.matches(EMAIL_PATTERN)) {return true; }
	return false;
	}
	}


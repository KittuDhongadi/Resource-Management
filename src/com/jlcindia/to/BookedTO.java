package com.jlcindia.to;

import java.io.Serializable;

public class BookedTO implements Serializable{
	private String Item_ID;
	private String Inst_ID;
	private String DateAquired;
	private String st_time;
	private String end_time;
	private String purpose;
	
	
	
	public String getItem_ID() {
		return Item_ID;
	}
	public void setItemID(String itemID) {
		Item_ID = itemID;
	}
	
	
	
	public String getInst_id() {
		return Inst_ID;
	}
	public void setInstID(String instID) {
		Inst_ID = instID;
	}
	
	
	
	public String getDateAquired() {
		return DateAquired;
	}
	public void setDateAquired(String DATE) {
		DateAquired=DATE;	
	}
	
	

	public String getStartTime() {
		return st_time;
	}
	public void setStart(String sttime) {
		st_time = sttime;
	}
	
	
	
	public String getEndTime() {
		return end_time;
	}
	public void setEnd(String etime) {
		end_time = etime;
	}
	
	public String getPurpose() {
		return purpose;
	}
	public void setPurp(String purp) {
		this. purpose = purp;
	}
	

	

}

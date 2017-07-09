package com.jlcindia.to;

import java.io.Serializable;

public class OrderTo implements Serializable{
	private String ItemID;
	private String ItemName;
	private String ItemDept;
	private String itemcat;
	private String itemdesc;
	public String getItemID() {
		return ItemID;
	}
	public void setItemID(String itemID) {
		ItemID = itemID;
	}
	public String getItemName() {
		return ItemName;
	}
	public void setItemName(String itemName) {
		ItemName = itemName;
	}
	public String getItemDept() {
		return ItemDept;
	}
	public void setItemDept(String itemDept) {
		ItemDept = itemDept;
	}
	public String getItemcat() {
		return itemcat;
	}
	public void setItemcat(String itemcat) {
		this.itemcat = itemcat;
	}
	public String getItemdesc() {
		return itemdesc;
	}
	public void setItemdesc(String itemdesc) {
		this.itemdesc = itemdesc;
	}

	

}

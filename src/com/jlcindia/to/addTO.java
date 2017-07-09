package com.jlcindia.to;

public class addTO {
	private String Category;
	private String ItemName;
	private String ItemId;
	private String ItemDesc;
	private String ItemDept;
	
	
	public addTO(String iId, String iName, String iDept, String iCat, String iDesc) {
		// TODO Auto-generated constructor stub
		
		this.ItemId=iId;
		this.ItemName=iName;
		this.ItemDesc=iDesc;
		this.ItemDept=iDept;
		this.Category=iCat;
		
	}

	public String getItemDesc() {
		return this.ItemDesc;
	}
	
	public String getItemDept() {
		return this.ItemDept;
	}
	
	public String getCategory() {
		return this.Category;
	}

	public String getItemName() {
		return this.ItemName;
	}

	public String getItemId() {
		return this.ItemId;
	}

}

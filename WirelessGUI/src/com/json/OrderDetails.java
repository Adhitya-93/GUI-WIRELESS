package com.json;
public class OrderDetails {

	String dateofbooking;
	String duedate;
	Services services;
	
	public OrderDetails(String dateofbooking, String duedate, Services[] services) {
		super();
		this.dateofbooking = dateofbooking;
		this.duedate = duedate;
		this.services = services[0];
	}		
}

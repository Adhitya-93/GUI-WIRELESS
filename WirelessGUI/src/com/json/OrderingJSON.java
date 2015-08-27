package com.json;

public class OrderingJSON {

	String lineofbusiness;
	CustomerDetails cust_det;
	OrderDetails order_det;
	ContractDetails contract_det;
	
	public OrderingJSON(CustomerDetails cust_det, OrderDetails order_det,
			ContractDetails[] contract_det) {
		super();
		this.lineofbusiness = "vzw";
		this.cust_det = cust_det;
		this.order_det = order_det;
		this.contract_det = contract_det[0];	
	}
}

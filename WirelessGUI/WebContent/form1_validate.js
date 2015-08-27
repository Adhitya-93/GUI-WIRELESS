function validate() {
	
	var cust_id=document.registration.cust_id;
	
	var firstname=document.registration.firstname;
	var lastname=document.registration.lastname;
	var bstreetname=document.registration.bstreetname;
	var bzipcode=document.registration.bzipcode;
	var bcity=document.registration.bcity;
	var bstate=document.registration.bstate;
	
	
	var email=document.registration.email;
	var dob=document.registration.dob;
	var ssn=document.registration.ssn;
	var plan=document.registration.plan;
	var order_type=document.registration.order_type;
	var contact_number=document.registration.contact_number;
	var number= /^[0-9]+$/;
	var letters = /^[a-zA-Z]*$/;
	
		
    if (firstname.value == 0) 
    {
    	window.alert("Please enter your First name.");
        firstname.focus();
        return false;
    }
  if (!firstname.value.match(letters)) 
    {
    	window.alert("Please enter valid First name.");
        firstname.focus();
        return false;
    }
        
    if (lastname.value== 0) 
    {
    	window.alert("Please enter your Last name.");
        lastname.focus();
        return false;
    }
 if (!lastname.value.match(letters)) 
    {
    	window.alert("Please enter valid Last name.");
        lastname.focus();
        return false;
    }
 else if (dob.value == 0) 
 {
 	window.alert("Please enter your Date of Birth.");
     dob.focus();
     return false;
 }
 else if (email.value == 0) 
 {
 	window.alert("Please enter your email.");
     email.focus();
     return false;
 }
 if (email.value.indexOf("@", 0) < 0)
 {
     window.alert("Please enter a valid e-mail address.");
     email.focus();
     return false;
     
 }
 if (email.value.indexOf(".", 0) < 0)
 {
     window.alert("Please enter a valid e-mail address.");
     email.focus();
     return false;
     
 }
 
 else if (contact_number.value == 0) 
 {
 	window.alert("Please enter your Contact number.");
 	contact_number.focus();
     return false;
 }
 else if(!contact_number.value.match(number))
 	{
 	window.alert("Please enter Valid Contact number.");
 	contact_number.focus();
     return false;
 	}
 else if(contact_number.value.length!=10)
	{
	window.alert("Please enter 10 digit Contact number.");
	contact_number.focus();
 return false;
	}
 
    else if (bstreetname.value == 0) 
    {
    	window.alert("Please enter your Billing Street name.");
        bstreetname.focus();
        return false;
    }
    else if (bcity.value == 0) 
    {
    	window.alert("Please enter your Billing City.");
        bcity.focus();
        return false;
    }
    else if (bstate.value == 0) 
    {
    	window.alert("Please enter your Billing State.");
        bstate.focus();
        return false;
    }
    else if (bzipcode.value == 0) 
    {
    	window.alert("Please enter your Billing Zipcode.");
        bzipcode.focus();
        return false;
    }
    else if(!bzipcode.value.match(number))
    	{
    	window.alert("Please enter Valid Billing Zipcode.");
        bzipcode.focus();
        return false;
    	}
    else if(bzipcode.value.length!=5)
	{
	window.alert("Please enter 5 digit Billing Zipcode number.");
	bzipcode.focus();
    return false;
	}
     
 
  
   
    else if (ssn.value == 0)
    {
    	window.alert("Please enter your SSN.");
        ssn.focus();
        return false;
    }
    else if(!ssn.value.match(number))
	{
	window.alert("Please enter Valid SSN number.");
    ssn.focus();
    return false;
	}
    
    else if(ssn.value.length!=9)   
	{
	window.alert("Please enter 9 digit SSN number.");
    ssn.focus();
    return false;
	}
    
    else {
 
        document.location.href="new_cust_ssn?ssn="+ssn.value+"&&firstname="+firstname.value+"&&lastname="+lastname.value+
                                "&&bstreetname="+bstreetname.value+"&&bzipcode="+bzipcode.value+"&&bcity="+bcity.value+"&&bstate="+bstate.value+
                                "&&country=United States Of America &&email="+email.value+"&&dob="+dob.value+"&&ssn="+ssn.value+
                                "&&plan="+plan.value+"&&order_type="+order_type.value+"&&contact_number="+contact_number.value+"&&cust_id="+cust_id.value; 
//alert("SUCCESS")
    }
}
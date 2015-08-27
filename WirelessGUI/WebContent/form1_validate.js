function validate() {
	
	
	var firstname=document.registration.firstname;
	var lastname=document.registration.lastname;
	var streetname=document.registration.streetname;
	var zipcode=document.registration.zipcode;
	var city=document.registration.city;
	var country=document.registration.country;
	var email=document.registration.email;
	var dob=document.registration.dob;
	var ssn=document.registration.ssn;
	var plan=document.registration.plan;
	var order_type=document.registration.order_type;
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
    else if (streetname.value == 0) 
    {
    	window.alert("Please enter your Street name.");
        streetname.focus();
        return false;
    }
    else if (zipcode.value == 0) 
    {
    	window.alert("Please enter your Zipcode.");
        zipcode.focus();
        return false;
    }
    else if(!zipcode.value.match(number))
    	{
    	window.alert("Please enter Valid Zipcode.");
        zipcode.focus();
        return false;
    	}
    else if(zipcode.value.length!=5)
	{
	window.alert("Please enter 5 digit Zipcode number.");
    ssn.focus();
    return false;
	}
    else if (city.value == 0) 
    {
    	window.alert("Please enter your City.");
        city.focus();
        return false;
    }
    else if (country.value == 0) 
    {
    	window.alert("Please enter your Country.");
        country.focus();
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
    else if (dob.value == 0) 
    {
    	window.alert("Please enter your Date of Birth.");
        dob.focus();
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
                                "&&streetname="+streetname.value+"&&zipcode="+zipcode.value+"&&city="+city.value+
                                "&&country="+country.value+"&&email="+email.value+"&&dob="+dob.value+"&&ssn="+ssn.value+
                                "&&plan="+plan.value+"&&order_type="+order_type; 
//alert("SUCCESS")
    }
}

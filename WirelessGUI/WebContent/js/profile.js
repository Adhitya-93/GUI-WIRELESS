$(document).ready(function(){

//get the form data and then serialize that
//dataString = $("#someform").serialize();

//get the form data using another method

//make the AJAX request, dataType is set to json
//meaning we are expecting JSON data in response from the server

//dataString=value;
$.ajax({
    type: "POST",
    url: "http://localhost:8080/SimpleRESTBasedCommunication/rest/server/postcheck2",
    //	data: dataString,
    dataType: "json",
    
    //if received a response from the server
    success: function( data, textStatus, jqXHR) { 
    	str = JSON.stringify(data);		 
		var jsonObj = JSON.parse(str);
		
		document.getElementById("firstname").value = (jsonObj.fname);
		document.getElementById("lastname").value = (jsonObj.lname);
		document.getElementById("streetname").value = (jsonObj.streetname);
		document.getElementById("zipcode").value = (jsonObj.zipcode);
		document.getElementById("city").value = (jsonObj.city);
		//document.getElementById("state").value = (jsonObj.state);
		//document.getElementById("contact").value = (jsonObj.contactnumber);
		document.getElementById("dob").value = (jsonObj.dateofbirth);
    },
    
    //If there was no response from the server
    error: function(jqXHR, textStatus, errorThrown){
         console.log("Something really bad happened " + textStatus);
          $("#Divdetails").html(jqXHR.responseText);
    },
    
    //capture the request before it was sent to server
    beforeSend: function(jqXHR, settings){
        //adding some Dummy data to the request
        //settings.data += "&dummyData=whatever";
        //disable the button until we get the response
        $('#mySubmit').attr("disabled", true);
    },
    
    //this is called after the response or error functions are finished
    //so that we can take some action
    complete: function(jqXHR, textStatus){
        //enable the button
        $('#mySubmit').attr("disabled", false);
    }
});
});
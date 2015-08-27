
 function purchase()
    {
    location.href="cust_reg_form.jsp";
    //console.log(prod_id);
    }

//PLAN WITH EQUIPMENT

function withequip(value)
{
//document.getElementById("framework").innerHTML="reached here";
//document.getElementById("framework").innerHTML=document.getElementById("step-1").innerHTML;

//var value="<%=  session[\"location\"].ToString()  %>";
console.log(value);
//console.log(this.id);

//get the form data and then serialize that
dataString = $("#someform").serialize();

//get the form data using another method

//make the AJAX request, dataType is set to json
//meaning we are expecting JSON data in response from the server

dataString=value;
$.ajax({
    type: "POST",
    url: "http://localhost:8080/SimpleRESTBasedCommunication/rest/server/postcheck",
    data: dataString,
    dataType: "json",
    
    //if received a response from the server
    success: function( data, textStatus, jqXHR) {
  
         //if(data.success){
       /*  $("#myDiv").html("");
         console.log( data );
         str = JSON.stringify(data);
         
         $("#myDiv").append(str);
         var obj=JSON.parse(str);
         $("#myDiv").append(obj.name);
     */    
         //}
         //display error message
        /* else {
             $("#ajaxResponse").html("<div><b>Data Receiving Error</b></div>");
         }*/
         
         
     	//document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			//document.getElementById("myDiv").innerHTML="In ajax";
			 str = JSON.stringify(data);
			 
			var jsonObj = JSON.parse(str);
			var jsonObj1 = jsonObj.products;
			//alert(jsonObj1[0].product_name);
			var i = 0;
			document.getElementById("framework").innerHTML="";
			for (i = 0; i < jsonObj1.length; i++) {
				
				
				var newbt = document
						.createElement("button");
				newbt.setAttribute("id",
						jsonObj1[i].product_name);
				newbt.setAttribute("name",
						jsonObj1[i].product_name);
				newbt.setAttribute("type","button");
				var bt_text = document
						.createTextNode(jsonObj1[i].product_name);
				newbt.appendChild(bt_text);
				document.getElementById("framework")
						.appendChild(newbt);

				
			}
         
			$(document.body).on(
					'click',
					'button',
					function() {
						 str = JSON.stringify(data);
						var jsonObj = JSON.parse(str);
						var jsonObj1 = jsonObj.products;
						//alert ('button ' + this.id + ' clicked');
						var i=0;
						for(i=0;i<jsonObj1.length;i++)
							{
							//$("p").remove();
							  if(this.name==jsonObj1[i].product_name)
							{
								 // console.log(this.id);
								  document.getElementById("framework").innerHTML="PRODUCT NAME : "+jsonObj1[i].product_name+"<br>"+"DEVICE : "+jsonObj1[i].product_desc+"<br>"+"COST : "+jsonObj1[i].cost+"<br/>"+"<input type=\"button\" value=\"Purchase\" onclick=\"purchase()\">";
									
							}
							}
						
					});
         
			
	
         
    },
    
    //If there was no resonse from the server
    error: function(jqXHR, textStatus, errorThrown){
         console.log("Something really bad happened " + textStatus);
          $("#Divdetails").html(jqXHR.responseText);
    },
    
    //capture the request before it was sent to server
    beforeSend: function(jqXHR, settings){
        //adding some Dummy data to the request
        //settings.data += "&dummyData=whatever";
        //disable the button until we get the response
        $('#plan_equip').attr("disabled", true);
    },
    
    //this is called after the response or error functions are finsihed
    //so that we can take some action
    complete: function(jqXHR, textStatus){
        //enable the button
        $('#plan_equip').attr("disabled", false);
    }

});   
}

//INDIVIDUAL PLAN

function individual_plan(value)
{
//document.getElementById("framework").innerHTML="reached here";
//document.getElementById("framework").innerHTML=document.getElementById("step-1").innerHTML;

//var value="<%=  session[\"location\"].ToString()  %>";
console.log(value);

//get the form data and then serialize that
dataString = $("#someform").serialize();

//get the form data using another method

//make the AJAX request, dataType is set to json
//meaning we are expecting JSON data in response from the server

dataString=value;
$.ajax({
    type: "POST",
    url: "http://localhost:8080/SimpleRESTBasedCommunication/rest/server/postcheck",
    data: dataString,
    dataType: "json",
    
    //if received a response from the server
    success: function( data, textStatus, jqXHR) {
  
         //if(data.success){
       /*  $("#myDiv").html("");
         console.log( data );
         str = JSON.stringify(data);
         
         $("#myDiv").append(str);
         var obj=JSON.parse(str);
         $("#myDiv").append(obj.name);
     */    
         //}
         //display error message
        /* else {
             $("#ajaxResponse").html("<div><b>Data Receiving Error</b></div>");
         }*/
         
         
     	//document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			//document.getElementById("myDiv").innerHTML="In ajax";
			 str = JSON.stringify(data);
			 
			var jsonObj = JSON.parse(str);
			var jsonObj1 = jsonObj.products;
			//alert(jsonObj1[0].product_name);
			var i = 0;
			document.getElementById("framework").innerHTML="";
			for (i = 0; i < jsonObj1.length; i++) {
				
				
				var newbt = document
						.createElement("button");
				newbt.setAttribute("id",
						jsonObj1[i].product_name);
				newbt.setAttribute("name",
						jsonObj1[i].product_name);
				newbt.setAttribute("type","button");
				var bt_text = document
						.createTextNode(jsonObj1[i].product_name);
				newbt.appendChild(bt_text);
				document.getElementById("framework")
						.appendChild(newbt);

				
			}
         
			$(document.body).on(
					'click',
					'button',
					function() {
						 str = JSON.stringify(data);
						var jsonObj = JSON.parse(str);
						var jsonObj1 = jsonObj.products;
						//alert ('button ' + this.id + ' clicked');
						var i=0;
						for(i=0;i<jsonObj1.length;i++)
							{
							//$("p").remove();
							  if(this.name==jsonObj1[i].product_name)
							{
								  
								  document.getElementById("framework").innerHTML="PRODUCT NAME : "+jsonObj1[i].product_name+"<br>"+"DEVICE : "+jsonObj1[i].product_desc+"<br>"+"COST : "+jsonObj1[i].cost+"<br/>"+"<input type=\"button\" value=\"Purchase\" onclick=\"purchase()\">";
									
							}
							}
						
					});
         
			
	
         
    },
    
    //If there was no resonse from the server
    error: function(jqXHR, textStatus, errorThrown){
         console.log("Something really bad happened " + textStatus);
          $("#Divdetails").html(jqXHR.responseText);
    },
    
    //capture the request before it was sent to server
    beforeSend: function(jqXHR, settings){
        //adding some Dummy data to the request
        //settings.data += "&dummyData=whatever";
        //disable the button until we get the response
        $('#indi_plan').attr("disabled", true);
    },
    
    //this is called after the response or error functions are finsihed
    //so that we can take some action
    complete: function(jqXHR, textStatus){
        //enable the button
        $('#indi_plan').attr("disabled", false);
    }

});   
}

//GROUP PLAN

function group_plan(value)
{
//document.getElementById("framework").innerHTML="reached here";
//document.getElementById("framework").innerHTML=document.getElementById("step-1").innerHTML;

//var value="<%=  session[\"location\"].ToString()  %>";
console.log(value);

//get the form data and then serialize that
dataString = $("#someform").serialize();

//get the form data using another method

//make the AJAX request, dataType is set to json
//meaning we are expecting JSON data in response from the server

dataString=value;
$.ajax({
    type: "POST",
    url: "http://localhost:8080/SimpleRESTBasedCommunication/rest/server/postcheck",
    data: dataString,
    dataType: "json",
    
    //if received a response from the server
    success: function( data, textStatus, jqXHR) {
  
         //if(data.success){
       /*  $("#myDiv").html("");
         console.log( data );
         str = JSON.stringify(data);
         
         $("#myDiv").append(str);
         var obj=JSON.parse(str);
         $("#myDiv").append(obj.name);
     */    
         //}
         //display error message
        /* else {
             $("#ajaxResponse").html("<div><b>Data Receiving Error</b></div>");
         }*/
         
         
     	//document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			//document.getElementById("myDiv").innerHTML="In ajax";
			 str = JSON.stringify(data);
			 
			var jsonObj = JSON.parse(str);
			var jsonObj1 = jsonObj.products;
			//alert(jsonObj1[0].product_name);
			var i = 0;
			document.getElementById("framework").innerHTML="";
			for (i = 0; i < jsonObj1.length; i++) {
				
				
				var newbt = document
						.createElement("button");
				newbt.setAttribute("id",
						jsonObj1[i].product_name);
				newbt.setAttribute("name",
						jsonObj1[i].product_name);
				newbt.setAttribute("type","button");
				var bt_text = document
						.createTextNode(jsonObj1[i].product_name);
				newbt.appendChild(bt_text);
				document.getElementById("framework")
						.appendChild(newbt);

				
			}
         
			$(document.body).on(
					'click',
					'button',
					function() {
						 str = JSON.stringify(data);
						var jsonObj = JSON.parse(str);
						var jsonObj1 = jsonObj.products;
						//alert ('button ' + this.id + ' clicked');
						var i=0;
						for(i=0;i<jsonObj1.length;i++)
							{
							//$("p").remove();
							  if(this.name==jsonObj1[i].product_name)
							{
								  
								  document.getElementById("framework").innerHTML="PRODUCT NAME : "+jsonObj1[i].product_name+"<br>"+"DEVICE : "+jsonObj1[i].product_desc+"<br>"+"COST : "+jsonObj1[i].cost+"<br/>"+"<input type=\"button\" value=\"Purchase\" onclick=\"purchase()\">";
									
							}
							}
						
					});
         
			
	
         
    },
    
    //If there was no resonse from the server
    error: function(jqXHR, textStatus, errorThrown){
         console.log("PRODUCT CATALOG TEAM IS WORKING ON IT. THANK YOU " + textStatus);
          $("#framework").html(jqXHR.responseText);
    },
    
    //capture the request before it was sent to server
    beforeSend: function(jqXHR, settings){
        //adding some Dummy data to the request
        //settings.data += "&dummyData=whatever";
        //disable the button until we get the response
        $('#grp_plan').attr("disabled", true);
    },
    
    //this is called after the response or error functions are finsihed
    //so that we can take some action
    complete: function(jqXHR, textStatus){
        //enable the button
        $('#grp_plan').attr("disabled", false);
    }

});   
}
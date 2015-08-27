import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.json.*;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();  
		Gson gson = new Gson();
		int cust_id = Integer.parseInt(request.getParameter("cust_id"));  
		String fname = request.getParameter("firstname");  
		String lname = request.getParameter("lastname");  
		String bstreet = request.getParameter("streetname");
		int bzip = Integer.parseInt(request.getParameter("bzipcode"));
		String bcity = request.getParameter("bcity");		
		String bstate = request.getParameter("bstate");
		String bcountry = request.getParameter("country");			

		//TODO Write code for proper State ID		
		int stateid = 0; 
		
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		long contact = Long.parseLong(request.getParameter("contact_number"));
		String order_type = request.getParameter("order_type");
		String plan = request.getParameter("plan");
		
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
		
		Address billingAddr = new Address(bstreet,bzip,bcity,bstate,stateid,bcountry);
		Address connAddr = new Address(bstreet,bzip,bcity,bstate,stateid,bcountry);
		CustomerDetails customerdetails = new CustomerDetails("new", cust_id, fname, lname, billingAddr, connAddr, email, contact, dob);		
		Quantity qty = new Quantity(1,1);
		
		Services services[] = new Services[1];
		services[0] = new Services(plan,"pip",qty);
		ContractDetails[] contractdetails = new ContractDetails[1];
		contractdetails[0] = new ContractDetails("", "", "", "", "", 0, 0);
		
		OrderDetails orderdetails = new OrderDetails(dateFormat.format(date), dateFormat.format(date), services);
		// convert java object to JSON format,
		// and return as JSON formatted string
		OrderingJSON orderJson = new OrderingJSON(customerdetails, orderdetails, contractdetails);
		String json = gson.toJson(orderJson);		
		
		System.out.println(json);
		//RESTClient client = new RESTClient();
		out.print("Inserting data......");
		//client.insert(json);		
		out.print("You are successfully registered...");
		out.print(json);		
		//TODO Redirect to order summary page.
	}		
}
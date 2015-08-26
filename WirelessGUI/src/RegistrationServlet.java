import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

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
		
		String fname = request.getParameter("firstname");  
		String lname = request.getParameter("lastname");  
		String bstreet = request.getParameter("streetname");
		String bzip = request.getParameter("zipcode");
		String bcity = request.getParameter("city");		
		String bstate = request.getParameter("state");
		String bcountry = request.getParameter("country");
		String cstreet = request.getParameter("streetname");
		String czip = request.getParameter("zipcode");
		String ccity = request.getParameter("city");		
		String cstate = request.getParameter("state");
		String ccountry = request.getParameter("country");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		Address billingAddr = new Address(bstreet,bzip,bcity,bstate,bcountry);
		Address connAddr = new Address(cstreet,czip,ccity,cstate,ccountry);
		Customer new_cust = new Customer("new","", fname, lname, billingAddr, connAddr, email, dob, contact);
		
		// convert java object to JSON format,
		// and return as JSON formatted string
		String json = gson.toJson(new_cust);		
		
		System.out.println(json);
		RESTClient client = new RESTClient();
		out.print("Inserting data...\n");
		client.insert(json);		
		out.print("You are successfully registered...");
		
		//TODO Redirect to next page.
	}		
}
package com.customerlog;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class checkplan
 */
@WebServlet("/checkplan")
public class checkplan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rep_username="sindu";
		HttpSession session=request.getSession();
		session.setAttribute("rep_username",String.valueOf(rep_username));
		
		
		response.setContentType("text/html"); 
		 ServletContext context=getServletContext();
		 request.setAttribute("plan", "plan_selected");
		 request.setAttribute("order_type", "order_type");
		 RequestDispatcher rd=context.getRequestDispatcher("/cust_reg_form.jsp");  
	        rd.forward(request, response);  
		
		
	}

}

//Step - 5
package com.sst.controller;

import java.io.IOException;
import java.util.List;

import com.sst.model.EmployeeDetails;
import com.sst.service.EmployeeService;
import com.sst.service.EmployeeServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/empDetails", loadOnStartup = 1) // This urlPattrens value is same as action value of form tag. loadOnStartup means execute the class on loading
public class EmployeeDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Declaration of Employee Service Class
	public EmployeeService employeeService;

	@Override
	// Create Object of Employee Service Class during loading of class
	public void init() throws ServletException {
		employeeService = new EmployeeServiceImpl();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String desg = req.getParameter("jobType");
		String actionVal = req.getParameter("sbmt1");
		try {
			List<EmployeeDetails> employeeDetails = employeeService.getEmployeeDetails(desg);
			req.setAttribute("empDetails", employeeDetails);//Set list object in to request object
			String actionRes = null;
			if (actionVal.equalsIgnoreCase("HtmlOutput")) {
				actionRes = "viewPage.jsp";
			} else {
				actionRes = "excel_sheetPage.jsp";
			}
			RequestDispatcher rd = req.getRequestDispatcher(actionRes);//Setting value in to RequestDispatcher Servlet
			rd.forward(req, res);//Here we are routing to another page as per conditions.
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = req.getRequestDispatcher("error.jsp");
			rd.forward(req, res);//If exception occurred it will route to error page 
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}
//Now design "viewPage.jsp", "excel_sheetPage.jsp" and error.jsp
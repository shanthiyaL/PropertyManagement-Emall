package com.virtusa.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.virtusa.DAO.*;
import com.virtusa.Model.*;

public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginRegister() {
        //super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO ud=new UserDAOImpl();
		String email=request.getParameter("email");
		String password=request.getParameter("password1");
		String submitType=request.getParameter("submit");
		RegisterModel rm=ud.getUserDetails(email,password);
		if(submitType.equals("Login") && rm!=null && rm.getEmail()!=null) {
			request.setAttribute("message",rm.getUsername());
			request.getRequestDispatcher("DashboardMStaff.jsp").forward(request, response);
		}
		else if(submitType.equals("Register")) {
			rm.setUsername(request.getParameter("username"));
			rm.setEmail(email);
			rm.setPhoneno(request.getParameter("phoneno"));
			rm.setPassword(password);
			rm.setUsertype(request.getParameter("usertype"));
			ud.insertData(rm);
			request.setAttribute("successmessage", "Registration Successful, please login to continue !!!");
			request.getRequestDispatcher("Login.jsp").forward(request,response);
			
		}
		else {
			request.setAttribute("message", "Data Not Found, click on Register !!!");
			request.getRequestDispatcher("Login.jsp").forward(request,response);
		}
	}

}

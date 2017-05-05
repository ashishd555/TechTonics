package com.test.techtalks;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.Classes.DBConnection;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Object title = request.getParameter("id");
		
		
		PrintWriter out = response.getWriter();
		out.print("You are Succesfully registered for " + title);
		
		RequestDispatcher rd = request.getRequestDispatcher("TechEvents.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		if (emailid.equals("ashish@d.com")
				&& password.equals("1234")) {
			RequestDispatcher rd = request
					.getRequestDispatcher("AdminTechEvents.jsp");
			rd.forward(request, response);
		} else {
			
			try {
				DBConnection db = new DBConnection();
				Connection con = db.getConnetion();
				
				ResultSet rs=db.FireQuery(con,emailid,password);
				
				if (rs.next()) {

					HttpSession session = request.getSession();
					session.setAttribute("n", request.getParameter("name"));
					RequestDispatcher rd = request.getRequestDispatcher("EventController");
					rd.include(request, response);

				} else {
					PrintWriter out = response.getWriter();
					out.print("Sorry UserName or Password Error!");
					RequestDispatcher rd = request
							.getRequestDispatcher("LoginForm.jsp");
					rd.include(request, response);
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}

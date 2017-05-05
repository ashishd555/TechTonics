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

import org.omg.CORBA.portable.ResponseHandler;

import com.mysql.fabric.Response;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class AddEventController
 */
public class AddEventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:MySql://localhost:3306/techtalk","root","root");
			
			String query="insert into events(title,date,description,trainer)"+"values(?, ?, ?, ?)";
			
			java.sql.PreparedStatement pr=con.prepareStatement(query);
			pr.setString(1, request.getParameter("title"));
			pr.setString(2, request.getParameter("date"));
			pr.setString(3, request.getParameter("description"));
			pr.setString(4, request.getParameter("trainer"));
			
			pr.executeUpdate();
			
			RequestDispatcher rd=request.getRequestDispatcher("AdminTechEvents.jsp");
			rd.forward(request, response);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
						
			PrintWriter out = response.getWriter();										
			out.print("This Title is Already exist..");  
	        RequestDispatcher rd=request.getRequestDispatcher("AddEvent.jsp");  
	        rd.include(request, response); 
			//RequestDispatcher rd=request.getRequestDispatcher("AddEvent.jsp");
			//rd.forward(request, response);
			
			
			//e.printStackTrace();
		}
		
		
	}

}

package com.test.techtalks;

import java.sql.ResultSet;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
	private ResultSet rs;
	public ResultSet Check(String id)
	{
	//	String id=(String)session.getAttribute("j");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:MySql://localhost:3306/techtalk", "root", "root");
			Statement st = con.createStatement();
			 rs= st.executeQuery("select * from events where title='"+id+"'");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

}

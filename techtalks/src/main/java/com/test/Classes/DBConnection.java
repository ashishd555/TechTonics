package com.test.Classes;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBConnection {
	ResultSet rs;
	ArrayList<TechTalkEvent> eventList;

	public Connection getConnetion() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:MySql://localhost:3306/techtalk", "root", "root");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;

	}

	public ResultSet FireQuery(Connection con,String emailid,String password) {

				
		try {
			Statement st = con.createStatement();
			 rs = st.executeQuery("select * from users where emailid='"+ emailid+"' && password='"
							+ password+ "'");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return rs;
	}

	public ArrayList<TechTalkEvent> getTechTalkEvent(Connection con)
	{
		
		try {
			Statement st = con.createStatement();

			ResultSet resultSet = st.executeQuery("select * from events");
			
			eventList = new ArrayList<TechTalkEvent>();
			
			while (resultSet.next()) 
			{
				TechTalkEvent event=new TechTalkEvent();
				event.title=resultSet.getString("title");
				event.date=resultSet.getString("date");
				event.description=resultSet.getString("description");
				event.trainer=resultSet.getString("trainer");
				eventList.add(event);
				
			}
			return eventList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}

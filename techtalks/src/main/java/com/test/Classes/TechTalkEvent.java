package com.test.Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TechTalkEvent {
	public String title;
	public String date;
	public String description;
	public 	String trainer;
	
	public TechTalkEvent() {
		// TODO Auto-generated constructor stub
	}
	public TechTalkEvent(String title, String date, String description,
			String trainer) {
		super();
		this.title = title;
		this.date = date;
		this.description = description;
		this.trainer = trainer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTrainer() {
		return trainer;
	}
	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	
	

	

}

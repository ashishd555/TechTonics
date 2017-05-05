package com.test.techtalks;

public class Event {
	
	int id;
	String name;
	String date;
	String description;
	String trainer;
	
	public Event() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Event(String name, String date, String description, String trainer) {
		super();
		this.name = name;
		this.date = date;
		this.description = description;
		this.trainer = trainer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

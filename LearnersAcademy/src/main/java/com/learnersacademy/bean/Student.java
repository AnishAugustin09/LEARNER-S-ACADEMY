package com.learnersacademy.bean;
import java.util.*;
public class Student {

	private int id;
	private String fName, lName, country;
	
	
	public Student() {
		super();
	}
	public Student(int id, String fName, String lName, String country) {
		super();
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.country = country;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	 
}

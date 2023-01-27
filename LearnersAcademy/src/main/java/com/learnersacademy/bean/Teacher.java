package com.learnersacademy.bean;
import java.util.*;
public class Teacher {

	private int id;
	private String Name,Country;
	
	
	public Teacher() {
		super();
	}
	public Teacher(int id, String name, String country) {
		super();
		this.id = id;
		Name = name;
		Country = country;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	
	
}

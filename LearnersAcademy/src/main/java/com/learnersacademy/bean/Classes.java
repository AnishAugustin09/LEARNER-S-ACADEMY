package com.learnersacademy.bean;
import java.util.*;
public class Classes {

	private int id;
	private String Grade;
	
	public Classes() {
		super();
	}
	public Classes(int id, String grade) {
		super();
		this.id = id;
		Grade = grade;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	
}

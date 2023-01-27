package com.learnersacademy.bean;
import java.util.*;
public class Subject {

	private int id;
	private String name;
	private String shortform;
	
	
	public Subject() {
		super();
	}
	public Subject(int id, String name, String shortform) {
		super();
		this.id = id;
		this.name = name;
		this.shortform = shortform;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShortform() {
		return shortform;
	}
	public void setShortform(String shortform) {
		this.shortform = shortform;
	}
	
	
}

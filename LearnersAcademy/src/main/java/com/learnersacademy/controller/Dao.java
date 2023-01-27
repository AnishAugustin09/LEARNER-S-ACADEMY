package com.learnersacademy.controller;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.learnersacademy.bean.Subject;
import com.learnersacademy.bean.Teacher;
import com.learnersacademy.bean.Classes;
import com.learnersacademy.bean.Student;

import java.sql.*;
public class Dao {

	public static boolean adminLogin(String id, String pass) {
		boolean status=false;
		try {
			Connection con= ConnectSql.getCon();
			Statement stmt=con.createStatement();
			String query=("select * from admin;");
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				if(id.equals(rs.getString(1))&&pass.equals(rs.getString(4))) {
					
					status=true;
				}
			}
		} catch (Exception e) {
			
		}
		return status;
		
	}
	
	public static List<Subject> getallSubject(){
		
		List<Subject> list=new ArrayList<Subject>();
		
		try {
			Connection con= ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Subject");  
	        ResultSet rs=ps.executeQuery(); 
	        while(rs.next()) {
	        	Subject sub=new Subject();
	        	sub.setId(rs.getInt(1));
	        	sub.setName(rs.getString(2));
	        	sub.setShortform(rs.getString(3));
	        	list.add(sub);
	        }
			
			
		} catch (Exception e) {
			
		}  
	    return list;  
	}  
	
	
	public static List<Classes> getallClasses(){
		
		List<Classes> clist=new ArrayList<Classes>();
		
		try {
			Connection con= ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Class");  
	        ResultSet rs=ps.executeQuery(); 
	        while(rs.next()) {
	        	Classes cl=new Classes();
	        	cl.setId(rs.getInt(1));
	        	cl.setGrade(rs.getString(2));
	        	
	        	clist.add(cl);
	        }
			
			
		} catch (Exception e) {
			
		}  
	    return clist;  
	}

	public static List<Student> getallStudent(){
		
		List<Student> slist=new ArrayList<Student>();
		
		try {
			Connection con= ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Student");  
	        ResultSet rs=ps.executeQuery(); 
	        while(rs.next()) {
	        	Student s=new Student();
	        	s.setId(rs.getInt(1));
	        	s.setfName(rs.getString(2));
	        	s.setlName(rs.getString(3));
	        	s.setCountry(rs.getString(4));
	        	
	        	slist.add(s);
	        }
			
			
		} catch (Exception e) {
			
		}  
	    return slist;  
	}
	
	public static List<Teacher> getallTeacher(){
 		
		List<Teacher> tlist=new ArrayList<Teacher>();
		
		try {
			Connection con= ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Teacher");  
	        ResultSet rs=ps.executeQuery(); 
	        while(rs.next()) {
	        	Teacher t=new Teacher();
	        	t.setId(rs.getInt(1));
	        	t.setName(rs.getString(2));
	        	t.setCountry(rs.getString(3));
	        	
	        	tlist.add(t);
	        }
			
			
		} catch (Exception e) {
			
		}  
	    return tlist;  
	}
	
	public static int assignClasses(int classid, String className, String subName) {
		
		int status=0;		
		try {
			
			Connection con=ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("insert into assignedclasses values(?,?,?);");
			ps.setInt(1,classid);
			ps.setString(2, className);
			ps.setString(3, subName);
			
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
	
//	public static int assignedClass() {
//		int status=0;
//		try {
//			Connection con=ConnectSql.getCon();
//			Statement stmt=con.createStatement();
//			String query=("select * from assignedclasses; ");
//			ResultSet rs=stmt.executeQuery(query);
//			while(rs.next()) {
//				
//			}
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//	}
	
public static int assignclassReport(int classid, String className, String subName, String techName, String studentName) {
		
		int status=0;		
		try {
			
			Connection con=ConnectSql.getCon();
			PreparedStatement ps=con.prepareStatement("insert into assignreport values(?,?,?,?,?);");
			ps.setInt(1,classid);
			ps.setString(2, className);
			ps.setString(3, subName);
			ps.setString(4, techName);
			ps.setString(5, studentName);
			
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}


	
}

	


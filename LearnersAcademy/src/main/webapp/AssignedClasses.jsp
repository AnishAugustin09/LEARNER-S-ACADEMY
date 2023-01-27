<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="java.util.*, java.io.IOException,java.io.PrintWriter,java.sql.*,javax.servlet.ServletException,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse,
 javax.servlet.http.HttpSession" %><%@page import="com.learnersacademy.controller.*,com.learnersacademy.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Assigned</title>
<style type="text/css">
body {
    background-image: url("book 3.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}
</style>
</head>
<body>
<center>
<div style=" margin-top:50px;">
<h1>LEARNER'S ACADEMY</h1>
</div>
<h3>Assigned Class&nbsp&nbsp&nbsp<a href="AcademyPage.jsp" style="background-color: #f44336; color: white;  padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;" >Main Menu</a></h3> 

<% 
try {
			Connection con=ConnectSql.getCon();
			Statement stmt=con.createStatement();
			String query=("select * from assignedclasses; ");
			ResultSet rs=stmt.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			
			while(rs.next()) {
				out.print("<center><table width=60% border=1>");
		        out.print("<tc><td><b>" + rsmd.getColumnName(1) + "</b></td></tc>");
		        out.print("<tc><td><b>" + rsmd.getColumnName(2) + "</b></td></tc>");
		        out.print("<tc><td><b>" + rsmd.getColumnName(3) + "</b></td></tc>");
		     
		        out.print("<tr><td>" + rs.getInt(1) + "</td>");
		        out.print("<td>" + rs.getString(2) + "</td>");
		        out.print("<td>" + rs.getString(3) + "</td>");
		        
		        
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
%>
</center>
</body>
</html>
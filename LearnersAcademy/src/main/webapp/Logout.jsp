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
<title>Logout</title>
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
<div style="margin-top:50px;">
<h1>LEARNER'S ACADEMY</h1>
</div>
<form method="post" action="ControllerServlet">
<h3>Sure!! You want to Logout?</h3>
	<input type="radio" name="conf" value="YES">Yes</br></br>
	<input type="radio" name="conf" value="NO">No</br></br>
    <input type="submit" value="Continue" style="background-color: #f44336; color: white;  padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;"/>
    <input type="hidden" name="code" value="LOGOUT">
</form>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page import="com.learnersacademy.controller.*,com.learnersacademy.bean.*,java.util.*"%>  
    <%@ page import="java.util.*, java.io.IOException,java.io.PrintWriter,java.sql.*,javax.servlet.ServletException,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse,
 javax.servlet.http.HttpSession" %><%@page import="com.learnersacademy.controller.Dao,com.learnersacademy.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class Report</title>
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
<h3>Class Report &nbsp&nbsp&nbsp<a href="AcademyPage.jsp" style="background-color: #f44336; color: white;  padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;">Main Menu</a>&nbsp&nbsp&nbsp<a href="ViewReport.jsp"style="background-color: #f44336; color: white;  padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;">VIEW REPORT</a></h3>
<div style="max-width:500px; border:2px solid black;border-radius: 15px;padding-top:20px; padding-bottom:20px; margin-top:80px;">
<form action="ControllerServlet" method="post">

Enter Class ID :
<select name="ClassId">
<option value="1" selected="selected">1</option>
<option value="2">2</option>
<option value="3">3</option>

</select></br></br>

Select Class :
<select name="ClassName">
<option value="Grade 1" selected="Grade 1">Grade 1</option>
<option value="Grade 2">Grade 2</option>
<option value="Grade 3">Grade 3</option>

</select></br></br>

Select Subject :
<select name="SubName">
<option value="JAVA" selected="JAVA">JAVA</option>
<option value="PYTHON">PYTHON</option>
<option value="RUBY">RUBY</option>
<option value="AI">AI</option>
<option value="ML">ML</option>
<option value="DL">DL</option>
<option value="BIGDATA">BIGDATA</option>
</select></br></br>

Select Teacher :
<select name="TeacherName">
<option value="BENSON" >BENSON</option>
<option value="GEORGE">GEORGE</option>
<option value="WILLIAM">WILLIAM</option>
<option value="KEN">KEN</option>
<option value="ROBERT">ROBERT</option>
</select></br></br>

Select Student Name: <select name="StudentName">
<option value="Rachel" >Rachel</option>
<option value="Robin">Robin</option>
<option value="Shiny">Shiny</option>
<option value="David">David</option>
</select></br></br>
<input type="hidden" name="code" value="ASSIGNCLASSREPORT">
<input type="submit" name="Assign" value="Assign" style="background-color: #f44336; color: white; padding: 5px 25px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;">



</form>
</div>
</center>
</body>
</html>
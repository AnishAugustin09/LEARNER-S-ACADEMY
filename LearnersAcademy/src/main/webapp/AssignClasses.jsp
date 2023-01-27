<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page import="com.learnersacademy.controller.Dao,com.learnersacademy.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assign class</title>
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
<h3>Assign Class &nbsp&nbsp&nbsp<a href="AcademyPage.jsp" style="background-color: #f44336; color: white;  padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;">Main Menu</a></h3>
<div style=" max-width:500px; border:2px solid black;border-radius: 15px;padding-top:20px; padding-bottom:20px; margin-top:50px;">
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
<input type="hidden" name="code" value="ASSIGNSUBJECT">
<input type="submit" name="Assign" value="Assign" style="background-color: #f44336; color: white; padding: 5px 25px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;">

</form>
</div>


</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page import="com.learnersacademy.controller.Dao,com.learnersacademy.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher list</title>
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
<h3>Teacher List&nbsp&nbsp&nbsp<a href="AcademyPage.jsp" style="background-color: #f44336; color: white; padding: 10px 15px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;" >Main Menu</a></h3>  
<%  
List<Teacher> tlist=Dao.getallTeacher();  
request.setAttribute("list",tlist);  
%>  
<table border="1" width="30%">
<tr><th>Id</th><th>Name</th><th>Country</th>
<c:forEach items="${list}" var="t">  
<tr><td>${t.getId()}</td><td>${t.getName()}</td><td>${t.getCountry()}</td>
</c:forEach>  
</table>  
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEARNER'S ACADEMY</title>
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
<h3>Log In</h3>
<div style="max-width:500px; border:2px solid black;border-radius: 15px;padding-top:20px; padding-bottom:20px; margin-top:80px;">
<form action="ControllerServlet" method="post">
<label for="ADMIN ID">ADMIN ID</label>
<input type="hidden" name="code" value="LOGIN">
<input type="text" id="ADMIN ID" name="aid" required></br></br>
<label for="PASSWORD">PASSWORD</label>
<input type="password" id="PASSWORD" name="apass" required></br></br>

<input type="submit" value="LOGIN" style="background-color: #f44336; color: white; padding: 5px 25px;border-radius:5px;text-align: center; text-decoration: none;display: inline-block;background-color: azure blue;  color:black;text-decoration-color: black;">


</form>
</div>
<div style=" margin-top:250px;">
<footer>
  <p>All Rights Reserved © 2023 LEARNER'S ACADEMY CMHSS &nbsp&nbsp Website Dveloped By Anish Augustin</p>
</footer>
</div>
</center>
</body>
</html>
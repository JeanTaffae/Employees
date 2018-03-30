<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Employee Entry Result</h2>
    <table>
        <tr>
            <td>First name</td>
            <td>${e.firstname}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${e.lastname}</td>
        </tr>
   		<tr>
            <td>Gender</td>
            <td>${e.gender}</td>
        </tr>
        <tr>
            <td>Position</td>
            <td>${e.position}</td>
        </tr>
        <tr>
            <td>Salary</td>
            <td>${e.salary}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>
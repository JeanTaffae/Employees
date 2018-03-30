<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Employee Entry Form</h2>
<mvc:form modelAttribute="employee" action="result.mvc">
<table>
	    <tr>
	        <td><mvc:label path="firstname">First Name</mvc:label></td>
	        <td><mvc:input path="firstname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="gender">Gender</mvc:label></td>
	        <td><mvc:radiobuttons path="gender" />
	        	</td>
	    </tr>
          <tr>
            <td><mvc:label path="position">Position</mvc:label></td>
            <td><mvc:select path="position" items="${positions}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="salary">Salary</mvc:label></td>
            <td><mvc:input path="salary" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	    </table>  
</mvc:form>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>
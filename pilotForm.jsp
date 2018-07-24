<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
.errMessage{
color: red;
font-size: 12;
font-style: italic;
}

<style type="text/css">
h1{color:red;}
</style>
</head>
<body>
<h1 align="center">Pilot Information</h1>
<hr>
<fieldset Style="width:1000px; margin-left:200px;">
<legend>Pilot Details Form</legend>
<c:if test="${!empty pilot}">
<form:form action="updatePilot" method="post" modelAttribute="pilot" >
<div>
<table align="center">
<tr>
<th colspan="3">Pilot Details</th>
</tr>

<tr>
<td>Pilot Id : </td>
<td><form:input path="pilotId" size="20" readonly="true" value="${pilot.pilotId}"/></td>

</tr>

<tr>
<td>First Name : </td>
<td><form:input type="text" path="firstName" size="20" value="${pilot.firstName}"/></td>
<td><form:errors path="firstName" class="errMessage"></form:errors></td>
</tr>

<tr>
<td>Last Name : </td>
<td><form:input type="text" path="lastName" size="20" value="${pilot.lastName}"/></td>
<td><form:errors path="lastName" class="errMessage"></form:errors></td>
</tr>

<tr>
<td>Email Id : </td>
<td><form:input type="text" path="email" size="20" value="${pilot.email}"/></td>
</tr>

<tr>
<td>Date of Birth : </td>
<td><form:input type="text" path="dateOfBirth" value="${pilot.dateOfBirth}"/></td>
<td><form:errors path="dateOfBirth" class="errMessage"></form:errors></td>
</tr>

<tr>
<td>Date of Joining : </td>
<td><form:input type="text" path="dateOfJoining" value="${pilot.dateOfJoining}"/></td>
<td><form:errors path="dateOfJoining" class="errMessage"></form:errors></td>
</tr>

<tr>
<td>Is Certified:</td>
<td>
	<form:radiobutton path="isCertified" value="true"  />Yes
	<form:radiobutton path="isCertified" value="false" />No
</td>
</tr>

<tr>
<td>Salary : </td>
<td><form:input type="text" path="salary" size="20" value="${pilot.salary}"/></td>
<td><form:errors path="salary" class="errMessage"></form:errors></td>
</tr>

<c:if test="${pilot.pilotId==0}">
<tr>
<td></td>
<td>
<input type="submit" value="Save">
</td>
</tr>
</c:if>
<c:if test="${pilot.pilotId!=0}">
<tr>			
<td></td>
<td>
<input type="submit" value="Update">
</td>
</tr>
</c:if>
</table>
</div>
</form:form>
<hr>
<div>
<c:if test="${!empty pilots}">
<table>
<tr>
<th>Pilot Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email Id</th>
<th>Date Of Birth</th>
<th>Date Of Joining</th>
<th>Is Certified</th>
<th>Salary</th>
</tr>

<c:forEach items="${pilots}" var="pilot">
<tr>
<td>${pilot.pilotId}</td>
<td>${pilot.firstName }</td>
<td>${pilot.lastName}</td>
<td>${pilot.email}</td>
<td>${pilot.dateOfBirth}</td>
<td>${pilot.dateOfJoining}</td>
<td>${pilot.isCertified}</td>
<td>${pilot.salary}</td>

<td>
<a href="delete/${pilot.pilotId}">Delete</a>&nbsp;&nbsp;
<a href="edit/${pilot.pilotId}">Edit</a> 
</td>
</tr>
</c:forEach>
</table>
</c:if>
</div>
</c:if>
</fieldset>
</body>
</html>
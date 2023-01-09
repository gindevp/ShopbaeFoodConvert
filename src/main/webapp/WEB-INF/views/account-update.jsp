<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>

  <h1>Add new Account:</h1>
  <form:form action="/ShobaeFood/update" method="POST"
    modelAttribute="account">
   <form:input path="id" type="hidden" /> <br/> <br/>
      Name: <form:input path="userName" /> <br/> <br/>
      Mail: <form:input path="email" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>
</body>

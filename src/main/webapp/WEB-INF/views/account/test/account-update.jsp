<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>

  <h1>Add new Account:</h1>
  <form:form action="${ pageContext.request.contextPath }/update" method="POST"
    modelAttribute="account">
   <form:input path="id" type="hidden" /> <br/> <br/>
      Name: <form:input path="userName" /> <br/> <br/>
      Mail: <form:input path="email" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>
</body>

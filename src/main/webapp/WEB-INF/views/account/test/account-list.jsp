<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/ShobaeFood/account/search" method = "get">
<label for="name">Name: </label>
<input type="text" name= "name" id= "name">
<button>Search</button>
</form>
  <h1>List Customer:</h1>
  <a href="/ShobaeFood/add">Add Customer</a>
  <br />
  <br />
<table>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Email</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:forEach var="q" items="${accounts}" >
  	<tr >
  		<td>${q.id}</td>
  		<td>${q.userName}</td>
  		<td>${q.email}</td>
  		<td><a href="${ pageContext.request.contextPath }/update/${q.id}" >edit</a></td>
        <td><a href="${ pageContext.request.contextPath }/delete/${q.id}" >delete</a></td>                         
  	</tr>
  	</c:forEach>
  </table>
</body>
</html>
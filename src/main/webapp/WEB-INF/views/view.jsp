<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
hello<h1>hello</h1>
<c:forEach var="q" items="${account}">
<h1>${q.userName} ${q.id}</h1>
<h1>${q.otp}</h1>
<h1>${q.id}</h1>
<h1>${q.userName}</h1></c:forEach>
</body>
</html>
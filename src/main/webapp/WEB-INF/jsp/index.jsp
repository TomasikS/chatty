<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
 <link href="/webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/main.css" rel="stylesheet">
</head>


<%@ include file="publisher.jsp" %>


<body>
<div th:if="${not #lists.isEmpty(counts)}">
    <h2>Users</h2>
    <table class="table table-striped">
    <c:forEach items="${counts}" var="element">
      <tr>
        <td>${element}</td>
</tr>
    </c:forEach>
    </table>
</div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 29.5.2018
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Confirmed student: ${student.firstName} ${student.lastName}
<br>
Country: ${student.country}
<br>
Language: ${student.favoriteLanguage}
<br>
Operating system:
<ul>

    <c:forEach var="temp" items="${student.operatingSystem}">
        <li>${temp}</li>
    </c:forEach>
</ul>

</body>
</html>

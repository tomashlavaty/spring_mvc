<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 29.5.2018
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registrationform</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student"> <!-- nazvy sa musia zhodovat s contolerom-->
    First name: <form:input path="firstName" />
    <br>
    Second name: <form:input path="lastName" />
    <br>
    <form:select path="country" > <!-- setter sa bude volas setCountry -->
        <form:options items="${theCountryOptions}" />
    </form:select>
    <br>
    Favorite Language
    Java: <form:radiobutton path="favoriteLanguage" value="Java" />
    C#: <form:radiobutton path="favoriteLanguage" value="C#"/>
    C++ <form:radiobutton path="favoriteLanguage" value="C++"/>
    <br>
    Operating system:
    Windows: <form:checkbox path="operatingSystem" value="Windows" />
    Linux: <form:checkbox path="operatingSystem" value="Linux" />
    <input type="submit" value="Submit" /> <!-- Spring call setter-->

</form:form>




</body>
</html>

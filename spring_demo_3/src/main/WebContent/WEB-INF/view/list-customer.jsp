<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 31.5.2018
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/data/style/style.css">
    <title>List of customer</title>
</head>
<body>

    <div id="wrapper">
    <div id="header">
        <h3>Customer list</h3>
    </div>
    <div id="container">

        <form:form action="search" method="POST">
            Search customer: <input type="text" name="theSearchName" />

            <input type="submit" value="Search" class="add-button" />
        </form:form>
        <div id="content">
            <table>
                <tr>
                    <th> First Name</th>
                    <th> Last Name</th>
                    <th> Email</th>
                    <th> Action</th>
                </tr>
                <c:forEach var="tmpCustomer" items="${customers}">
                 <tr>
                     <!-- spristupnenie id-->
                     <c:url var="updateLink" value="/customer/showFormForUpdate">
                         <c:param name="customerId" value="${tmpCustomer.id}" />
                     </c:url>

                     <c:url var="deleteLink" value="/customer/delete">
                         <c:param name="customerId" value="${tmpCustomer.id}" />
                     </c:url>


                     <th>${tmpCustomer.firstName}</th>
                     <th> ${tmpCustomer.lastName}</th>
                     <th>${tmpCustomer.email}</th>
                     <th>
                         <a href="${updateLink}">
                            <img src="${pageContext.request.contextPath}/data/images/edit_black_18dp.png" />
                         </a>
                         <a href="${deleteLink}"> <!-- if(!(confirm("really delete customer?/)))) -->
                             <img src="${pageContext.request.contextPath}/data/images/delete_black_18dp.png" />
                         </a>
                     </th>


                </tr>

                </c:forEach>

            </table>
            <!--  add bustton
             window.location.href vrati aktualnu URL
            -->
            <input type="button"  value="Add Customer"  onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button"

            />

        </div>
    </div>
</div>

</body>
</html>

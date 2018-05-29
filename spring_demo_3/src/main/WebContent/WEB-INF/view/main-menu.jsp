<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 27.5.2018
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/data/style/my-test.css">
    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>

</head>
<body>
<title>Title</title>
Hello word  title web of my mvc app
<a href="/showForm" > Hello world form</a>
${pageContext.request.contextPath}
<a href="student/showForm" > Student form</a>

<img src="${pageContext.request.contextPath}/data/images/spring-logo.png">

</body>
</html>

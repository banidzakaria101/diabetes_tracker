<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Blood Glucose Test</title>
</head>
<body>
<h2>Add Blood Glucose Test</h2>
<form:form action="${pageContext.request.contextPath}/user/test/add" modelAttribute="test" method="post">

    <label for="BGLs">Blood Glucose Level:</label>
    <form:input path="BGLs" id="BGLs"  required="true"/>

    <label for="testDate">Test Date:</label>
    <form:input path="testDate" id="testDate" type="datetime-local" required="true"/>

    <form:hidden path="user.id" id="userId"/>

    <button type="submit">Add Test</button>

</form:form>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New User</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: url('https://images.pexels.com/photos/6823568/pexels-photo-6823568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .form-container h2 {
            margin-top: 0;
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-container input[type="text"], .form-container input[type="email"], .form-container input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container button {
            background-color: rgba(0, 123, 255, 0.9);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .form-container button:hover {
            background-color: rgba(0, 123, 255, 1);
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Add New User</h2>
<form:form action="${pageContext.request.contextPath}/user/register" modelAttribute="user" method="post">



    <label for="userName">Name:</label>
    <form:input path="userName" id="userName" required="true" />



    <label for="userAge">Name:</label>
    <form:input path="userAge" id="userAge" required="true" />

    <label for="userGender">Name:</label>
    <form:input path="userGender" id="userGender" required="true" />



        <button type="submit">Add User</button>
</form:form>
</div>
</body>
</html>

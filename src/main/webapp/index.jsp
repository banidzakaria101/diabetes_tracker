<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://images.pexels.com/photos/6823568/pexels-photo-6823568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .header {
            background-color: rgba(0, 123, 255, 0.9); /* Blue semi-transparent background */
            color: white;
            padding: 15px 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .logo {
            font-size: 24px;
            font-weight: 700;
            display: flex;
            align-items: center;
        }
        .nav-links {
            display: flex;
            gap: 15px;
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .nav-links a:hover {
            background-color: rgba(0, 123, 255, 0.7);
        }
        .content {
            padding: 80px 20px 20px; /* Added top padding to avoid overlap with fixed header */
            border-radius: 10px;
            margin: 20px;
            flex: 1; /* Take up remaining space */
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
        }
        .box {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 10px;
            padding: 20px;
            margin: 10px;
            width: 300px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .box h3 {
            margin-top: 0;
        }
        .box p {
            margin: 15px 0;
        }
        .box button {
            background-color: rgba(0, 123, 255, 0.9);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .box button:hover {
            background-color: rgba(0, 123, 255, 1);
        }
        .footer {
            background-color: rgba(0, 123, 255, 0.9); /* Blue semi-transparent background */
            color: white;
            padding: 15px 20px;
            text-align: center;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="logo.png" alt="Diabetes Tracker" style="height: 40px; margin-right: 10px;">
    </div>
    <div class="nav-links">
        <a href="home.jsp">Home</a>
        <a href="about.jsp">About Us</a>
    </div>
</div>
<div class="content container">
    <div class="box">
        <h3>Add User</h3>
        <p>Click the button below to add a new user to the Diabetes Tracker.</p>
        <button onclick="location.href='user/register'">Add User</button>
    </div>
    <div class="box">
        <h3>View Users</h3>
        <p>Click the button below to display all registered users.</p>
        <button onclick="location.href='user/display'">View Users</button>
    </div>
</div>
<div class="footer">
    <p>&copy; 2024 Diabetes Tracker. All rights reserved.</p>
</div>
</body>
</html>

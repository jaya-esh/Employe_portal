<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Com.Model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Employee Home Page</title>
   <link rel="stylesheet" href="style.css">
   <style type="text/css">
   	/* General Body Styles */
body {
   font-family: 'Arial', sans-serif;
   background-color: #f4f7fc;  /* Light background for the entire page */
   margin: 0;
   padding: 0;
}

/* Navbar Styles */
nav {
   display: flex;
   justify-content: space-between;
   background-color: #2c3e50;  /* Dark blue for the navbar */
   padding: 10px 30px;
   color: white;
   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

nav .logo {
   font-size: 1.5rem;
   font-weight: bold;
   color: #fff;
}

nav .nav-links button {
   background-color: #3498db;  /* Blue color for buttons */
   color: white;
   border: none;
   font-size: 16px;
   cursor: pointer;
   padding: 8px 20px;
   border-radius: 5px;
   transition: background-color 0.3s ease;
}

nav .nav-links button:hover {
   background-color: #2980b9;  /* Darker blue when hovering */
}

/* Home Page Styles */
.home-page {
   background-color: white;
   margin: 20px auto;
   padding: 20px;
   border-radius: 8px;
   width: 80%;
   box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1);
}

h1 {
   color: #34495e;  /* Dark gray for the heading */
   font-size: 2rem;
   margin-bottom: 10px;
}

p {
   color: #7f8c8d;  /* Light gray for the text */
   font-size: 1.1rem;
   margin-bottom: 20px;
}

.activity-feed {
   display: flex;
   flex-direction: column;
   gap: 15px;
}

.activity-feed .card {
   background-color: #ecf0f1;  /* Light gray for cards */
   padding: 15px;
   border-radius: 8px;
   box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.05);
   color: #34495e;
}

.activity-feed .card h3 {
   margin-top: 0;
   font-size: 1.2rem;
}

.activity-feed .card p {
   font-size: 1rem;
   color: #7f8c8d;
}

/* Mobile responsiveness */
@media (max-width: 768px) {
   nav {
       flex-direction: column;
       align-items: center;
   }

   .home-page {
       width: 95%;
   }

   .nav-links button {
       width: 100%;
       margin-top: 10px;
   }
}
   	
   </style>
</head>
<body>
   <nav>
       <div class="logo">
           <!-- Company Logo Here -->
       </div>
       <div class="nav-links">
         <a href="view.jsp">  <button class="profile-btn">View Profile</button></a>
           <a href="logout"><button class="logout-btn">Logout</button></a>
       </div>
   </nav>
	<% Employee e=(Employee)session.getAttribute("emp"); %>
   <div class="home-page">
       <h1>Welcome, <%=e.getEName() %></h1>
       <p>Here’s what’s happening today:</p>
       <div class="activity-feed">
       <a href="EmpList">ListOfEmployees</a>
       </div>
   </div>

   <script src="script.js"></script>
</body>
</html>

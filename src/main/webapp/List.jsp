<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Com.Model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
	<%List<Employee> li= (List<Employee>)request.getAttribute("list"); %>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Mail</th>
                <th>password</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <% for(Employee l:li){ %>
            <tr>
                <td><%=l.getEid() %></td>
                <td><%=l.getEName() %></td>
                <td><%=l.getEmpEmail() %></td>
                 <td><%=l.getEPassWord() %></td>
                <td><a href="update?id=<%=l.getEid()%>">Edit</a></td>
                <td><a href="delete?id=<%=l.getEid()%>">Delete</a></td>
            </tr>
            <%} %>
        </tbody>
    </table>

</body>
</html>
</body>
</html>
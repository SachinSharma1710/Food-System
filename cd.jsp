<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String pname = request.getParameter("pname");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306";
String database = "test";
String userid ="root";
String password ="123456";
try{
Class.forName(driver);
}catch(ClassNotFoundException e){
e.printStackTrace();}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" href="style3.css">
<link rel="stylesheet" href="rn.css">
</head>
<body>
<table class="styled-table">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
             
                
            </tr>
        </thead>
</center>
<%
try{
//Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","123456");
statement = con.createStatement();
String sql = "select * from f4 where pname='"+pname+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){%>
<tbody>
<tr>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("qy") %></td>

</tr></tbody>
<%}connection.close();
}catch(Exception e){
e.printStackTrace();}
%>
</table>
<br><br><br><br><br><br>
<div class="container">

    <form name="myform" method="post" action="dcd.jsp">

        <div class="row">

            <div class="col">

                <h3 class="title">Remove Product</h3>

                <div class="inputBox">
                    <span>Product Name :</span>
                    <input type="text" placeholder="Alexa" name="pname">
                </div><br>
       
<a style="text-decoration: none;"><button class="submit-btn" onclick="myalert()">
    Remove
</button></a>
<script>
    function myalert() {
        alert("Succefully Deleted!" );
    }
</script>
</body>
</html>
</body>
</html>
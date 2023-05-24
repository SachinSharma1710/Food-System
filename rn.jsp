<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name =request.getParameter("name");
String ln =request.getParameter("ln");
String city =request.getParameter("city");
String pass =request.getParameter("pass");
String cy =request.getParameter("cy");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into f2(name,ln,city,pass,cy)values('"+name+"','"+ln+"','"+city+"','"+pass+"','"+cy+"')");
out.println();

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="rn.css">

</head>
<body>

<div class="container">

    <form name="myform" method="post" action="login.jsp">

        <div class="row">

            <div class="col">

                <h3 class="title">Login</h3>

                <div class="inputBox">
                    <span>Full name :</span>
                    <input type="text" placeholder="Shiv Sharma" name="name">
                </div>
                
                <div class="inputBox">
                    <span>Password :</span>
                    <input type="text" placeholder="Password" name="pass">
                </div>
                <a style="text-decoration: none; margin-left:360px;" href="rn.html">
Registration?</a><br>
<a style="text-decoration: none;" href="index.html"><button class="submit-btn" id="signupBtn">
    Login
</button></a>

    </form>   
    
</body>
</html>
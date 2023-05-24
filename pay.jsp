<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pname =request.getParameter("pname");
String ln =request.getParameter("ln");
String city =request.getParameter("city");
String cy =request.getParameter("cy");
String name =request.getParameter("name");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into f3(pname,ln,city,cy,name)values('"+pname+"','"+ln+"','"+city+"','"+cy+"','"+name+"')");
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

    <form action="">

        <div class="row">

            <div class="col">

                <h3 class="title">Food System</h3>

                <div class="inputBox">
                    <a style="text-decoration: none;" href="pay.html"><button class="submit-btn" type="button" id="signupBtn">
                        Order Now
                    </button></a><br><br>                
<a style="text-decoration: none;" href="card.html"><button class="submit-btn" type="button" id="signupBtn">
    Add To Card
</button></a><br><br>


    </form>   
    
</body>
</html>
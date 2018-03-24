<%-- 
    Document   : reg
    Created on : 31 Oct, 2017, 4:24:01 PM
    Author     : Siddharth Meharwade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import= "java.sql.*" %>
        <%
            String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into login values ('"+name+"','"+uname+"','"+email+"','"+password+"')");
            if(i>0)
            {
                response.sendRedirect("login.jsp");
            }
            else
            {
                response.sendRedirect("register.jsp");
            }
            %>
    </body>
</html>

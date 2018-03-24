<%-- 
    Document   : loginindex
    Created on : 31 Oct, 2017, 4:46:42 PM
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
            
            String uname=request.getParameter("uname");
      
            String password=request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from login where uname='"+uname+"' and password='"+password+"'");
            if(rs.next())
            {
                session.setAttribute("uname", uname);
                response.sendRedirect("menu.jsp");
            }
            else
            {
                out.println("invalid password <a href='login.jsp'> try again</a>");
            }
            %>
    </body>
</html>

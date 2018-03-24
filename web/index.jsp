<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <% 
            String name=request.getParameter("name");
            String telephone=request.getParameter("telephone");
	    String address=request.getParameter("address");
            String pid=request.getParameter("pid");
            String breed=request.getParameter("breed");
	    String gender=request.getParameter("gender");
	    String age=request.getParameter("age");
	    String oid=request.getParameter("oid");
            String vac_id=request.getParameter("vac_id");
            String disease=request.getParameter("disease");
	    String treatment=request.getParameter("treatment");
	    
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into owner values ("+oid+",'"+name+"',"+telephone+",'"+address+"')");
            st.executeUpdate("insert into pet values ("+pid+",'"+breed+"','"+gender+"',"+age+","+oid+")");
	    st.executeUpdate("insert into pet_health values ("+vac_id+",'"+disease+"','"+treatment+"',"+pid+")");
            String Query = "select * from view1";
            PreparedStatement psm =con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
                out.println("REGISTERED");
                response.sendRedirect("forvet.jsp");
            }
            else
            {
                out.println("Error in Registration");
            }
        %>
    </body>
</html>
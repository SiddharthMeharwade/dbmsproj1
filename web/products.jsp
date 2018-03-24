<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <% 
            String prid=request.getParameter("prid");
            String item=request.getParameter("item");
	    String price=request.getParameter("price");
	    String quantity=request.getParameter("quantity");
	    String oid=request.getParameter("oid");
            String total=request.getParameter("total");
            
	    
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement();
            
            st.executeUpdate("insert into products values("+prid+",'"+item+"',"+price+","+quantity+","+oid+","+total+");");
	    
            String Query = "select oid,total from products where oid="+oid+"";
            PreparedStatement psm =con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
                out.println("DONE"); 
                response.sendRedirect("total.jsp");
                
            }
            else
            {
                out.println("Error in Registration");
            }
        %>
    </body>
</html>
<%-- 
    Document   : products1
    Created on : 5 Nov, 2017, 9:25:48 AM
    Author     : Siddharth Meharwade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>total</title>



<link rel="stylesheet" href="home.css" type="text/css" />

<table border="0" bgcolor="#808080" align="top" width="100%" style="position: relative; height:100px">
 <tr>
	<td bgcolor="#e22222" align="center">
	<p style="font-size:38pt; color: #ffffff; font-family:Arial Rounded MT Bold">PET CENTRE</p>
	</td>
	<td bgcolor="666699" align="left" width="180">
	<img alt="logo" src="images/1.jpg" width="180" height="160" align="right"/>
</td></tr></table>
<table bgcolor="white" border="1" align="top" width="100%" style="height:500px">
<tr>
<td bgcolor="#e22222" width="20%" valign="top" align="center">
<table cellspacing="0.5" border="1" align="center" width="100%" bgcolor="FFFFFF">
<br/>

<ul class="vert-one">
  <li><a href="menu.jsp" class="current">Menu</a></li>
  <li><a href="gallery.jsp">Gallery</a></li>
  <li><a href="home.jsp">PetEntry</a></li>
  <li><a href="login.jsp">Login</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="aboutus.jsp">Contact us</a></li>
  <li><a href="location.jsp">AllDetails</a></li>
  <li><a href="products1.jsp">Products</a></li>
</ul><br/>
<td bgcolor="666699" align="left" width="180">
	<img alt="logo" src="images/1.jpg" width="100%" height="250" align="left"/>
</td>
</table></td>
<td width="85%" valign="top" bgcolor="white">
    <h2 align="center"><font><strong>User Transaction by ID</strong></font></h2>
    <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            
        </tr>
        <tr bgcolor="#a52a2a">
            <td><b>ID:</b></td>
            <td><b>Total amount:</b></td>
           
        </tr>
        
        <%@page import= "java.sql.*" %>
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
            while(rs.next()){
          
            
            
            
            
            
            
            
                %>
                <tr bgcolor='#DEB887'>
                    <td><%=rs.getInt("oid")%></td>
                    <td><%=rs.getInt("total")%></td>
                    
                </tr>
                <%
            
                    
                  }
            try{
                 rs.close();
                    st.close();
                    } catch(SQLException e) {
                            System.out.println(e.getMessage());
                        }
            %>
    </table></br></br>
    
</td>
</tr>
</table>
        
    </body>
</html>

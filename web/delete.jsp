<!DOCTYPE html>
<html>
<head>
<title>For Vet</title>



<link rel="stylesheet" href="home.css" type="text/css" />
<link rel="stylesheet" href="bs/bootstrap.min.css" type="text/css" />
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
    <h2 align="center"><font><strong>All Details</strong></font></h2>
    <table class="table table-bordered table-hover table-striped" align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            
        </tr>
        <tr bgcolor="#a52a2a">
           
            <td><b>Vac_id</b></td>
            <td><b>Breed</b></td>
            <td><b>Gender</b></td>
            <td><b>Age</b></td>
            <td><b>Disease</b></td>
            <td><b>Treatment</b></td>
            <td><b>pid</b></td>
            
           
        </tr>
        <%@page import= "java.sql.*" %>
        <%
            String pid=request.getParameter("pid");
            String oid=request.getParameter("oid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st1=con.createStatement();
            st1.executeUpdate("delete from pet where pid="+pid+";");
            st1.executeUpdate("delete from pet_health where pid="+pid+";");
            st1.executeUpdate("delete from owner where oid="+oid+";");
           
            
            Statement st=con.createStatement();
            
            String sql = "SELECT * " + "FROM view1";
            ResultSet rs    = st.executeQuery(sql);
            while (rs.next()) {
                %>
                <tr bgcolor='#DEB887'>
                   
                    <td><%=rs.getInt("vac_id")%></td>
                    <td><%=rs.getString("breed")%></td>
                     <td><%=rs.getString("gender")%></td>
                    <td><%=rs.getInt("age")%></td>
                    <td><%=rs.getString("disease")%></td>
                    <td><%=rs.getString("Treatment")%></td>
                    <td><%=rs.getInt("pid")%></td>
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
    </table>
</td>
</tr>
</table>
</body>
</html>
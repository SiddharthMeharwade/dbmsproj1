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
        <title>product details</title>



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

<ul class="vert-one table table-bordered table-striped">
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
    <h2 align="center"><font><strong>Available Products</strong></font></h2>
    <table class="table table-bordered table-hover table-active table-striped" align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            
        </tr>
        <tr bgcolor="#a52a2a">
            <td><b>No.</b></td>
            <td><b>Item</b></td>
            <td><b>Price</b></td>
           
        </tr>
        <%@page import= "java.sql.*" %>
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            Statement st=con.createStatement();
            String sql = "SELECT prid, item, price " + "FROM available";
            ResultSet rs    = st.executeQuery(sql);
            while (rs.next()) {
                %>
                <tr bgcolor='#DEB887'>
                    <td><%=rs.getInt("prid")%></td>
                    <td><%=rs.getString("item")%></td>
                    <td><%=rs.getInt("price")%></td>
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
    <div class="jumbotron">
    <h2 align="center">BUY PRODUCT</h2>
    </div>
   <table bgcolor="black" cellpadding="12px" border="1" width="60%" align="center" style="height:100px">
<tr>
<td bgcolor="white">
<table border="0" width="100%" bgcolor="white" align="center" style="height:50px"> 
<form method="get" action="total.jsp">
    <div class="row">
        <div class="col-md-6">
            <div class="form-control">
                <label>Enter the no.:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="prid" placeholder="Give sl no."/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-control">
                <label>Item name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="item" placeholder="item"/>
            </div>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-6">
            <div class="form-control">
                <label>Enter price:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="price" placeholder="Give price."/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-control">
                <label>Item Quantity:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="quantity" placeholder="number"/>    
            </div>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-6">
            <div class="form-control">
                <label>Enter your id:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="oid" placeholder="Give your id"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-control">
                <label>Total</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="total" placeholder="leave null"/>
            </div>
        </div>
    </div>
    <br/>
    <center><input type ="submit" value="Submit" class="btn btn-success"/>&nbsp;</center>
</form> </table></td></tr></table> 








   
    
</td>
</tr>
</table>
        
    </body>
</html>

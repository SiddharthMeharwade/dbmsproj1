<!DOCTYPE html>
<html>
<head>
<title>PetDetails</title>


<link rel="stylesheet" href="bs/bootstrap.min.css" type="text/css" />
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
    <p style="color: darkblue; font-size:20pt" align="center">Enter the Details</p><br/>
<table bgcolor="black" cellpadding="12px" border="1" width="60%" align="center" style="height:100px">
<tr>
<td bgcolor="white">
<table border="0" width="100%" bgcolor="white" align="center" style="height:100px">

<form class="form-basic form-group" method="get" action="index.jsp">
    
 

      
    
    <div class="jumbotron" style="height:20px;color:green">
        <p style="color: darkblue; font-size:20pt" align="center">Customer Details</p>
    </div>
    <br/>
    <div class="row">
         <div class="col-md-6">
            <div class="form-control">           
                <label>Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="name" placeholder="Give owner name"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-control">            
                <label>TEL:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="telephone" placeholder="Telephone"/>
            </div>
        </div>
    </div>
    <br/>
    <div class="row">
        
        
        <div class="col-md-6">
            <div class="form-control">
                <label>ADD:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="address" placeholder="Address"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-control">
                <label>PID:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="pid" placeholder="Give ID"/>
            </div>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-6">
            <div class="form-control">
                <label>BREED:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="breed" placeholder="breed"/><br/><br/>
            </div>            
        </div>    
        <div class="col-md-6">
            <div class="form-control">
                <label>GENDER: </label>&nbsp;&nbsp;&nbsp;
                <input type="radio" value="f" name="gender"/><label>FEMALE</label>
                <input type="radio" value="m" name="gender"/><label>MALE</label><br/><br/><br/>
            </div>            
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="form-control">
                <label>AGE:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="age" placeholder="age"/><br/><br/>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <br/>
    
    
    
    <div class="jumbotron"style="height:20px;color:green">
        <p style="color: darkblue; font-size:20pt" align="center">Enter after check-up</p>
    </div>
<br/>
<div class="row">
    <div class="col-md-6">
        <div class="form-control">
            <label>OID:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="oid" placeholder="oid"/>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-control">
            <label>VAC_ID:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="vac_id" placeholder="Give ID"/>
        </div>
    </div>
</div>
<br/>
<div class="row">
    <div class="col-md-6">
        <div class="form-control">
            <label>DISEASE:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="disease" placeholder="enter from dropdown"/>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-control">
            <label>Choose From Here:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select name="disesases">
            <option value="-1">[diseases]</option>
            <option value="1">Rabies</option>
            <option value="2">Zoonosis</option>
            <option value="3">volvulus</option>
            <option value="4">cherry eye</option>
            </select>
        </div>
    </div>
</div>
<br/>
<div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="form-control">
                <label>TREATMENT:</label>&nbsp;&nbsp;
                <input type="text" name="treatment" placeholder="treatment"/>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-3"></div>        
        <div class="col-md-6">
            <input type ="submit" class="btn btn-success"value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;
            <input type ="reset" value="Clear" class="btn btn-danger" style="float:right;" />&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <div class="col-md-3"></div>
    </div>

</form>
</table>
</td>
</tr>
</table>   
</td>
</tr>
</table>
</body>
</html>
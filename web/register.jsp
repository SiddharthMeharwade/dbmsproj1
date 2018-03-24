<!DOCTYPE html>

<html >

<head>
  <meta charset="UTF-8">
  <title>REGISTER</title>
  
  
  
   <link rel="stylesheet" href="css/style.css">




</head>


<body>

<form name="myform" action="reg.jsp" method="post">
  <header>REGISTER</header>
 
 <label>Name <span>*</span></label>
 
 <input id="d" required="required" type="text" name="name"/>

<label>Username <span>*</span></label>
 
 <input id="a" required="required" type="text" name="uname"/>

  <div class="help">At least 6 character</div>

<label>Email <span>*</span></label>
<input required="required" id="b" type="email" name="email"/>
  <label>Password <span>*</span></label>
  
<input required="required" id="c" type="password" name="pwd"/>
 
 <div class="help">Use upper and lowercase letters as well</div>
 
 <button>Register</button>&nbsp;&nbsp;

 <button>Reset</button>
</form>


</body>

</html>

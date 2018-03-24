<!DOCTYPE html>

<html >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
   <link rel="stylesheet" href="css/style.css">


<script>
function validate()
{
if( document.getElementById("a").value == "")
{
alert("Please provide your name!!");
document.getElementById("a").focus();
return false;
}
if( document.getElementById("b").value == "")
{
alert("Please provide your email!!");
document.getElementById("b").focus();
return false;
}
if( document.getElementById("c").value == "")
{
alert("Please provide your password!!");
document.getElementById("c").focus();
return false;
}
return(true);
}
</script> 

</head>


<body>

<form name="myform" action="loginindex.jsp" method="post">
  <header>Login</header>
 
 <label>Username <span>*</span></label>
 
 <input id="a" type="text" name="uname"/>

  <div class="help">At least 3 character</div>


  <label>Password <span>*</span></label>
  
<input id="c" type="password" name="pwd"/>
 
 <div class="help">Use upper and lowercase letters as well</div>
 
 <button> <input type="submit" value="Login"></input></button>

 <p class="help">If you don't have an account <a href="register.jsp">Register here!</a></p>
</form>


</body>

</html>

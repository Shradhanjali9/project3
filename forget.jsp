<%@ include file="dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>eGrievance</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
        $('#slider').s3Slider({
            timeOut: 3000
        });
    });
</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript">
function verify(){
if(document.f1.t1.value==""){
  alert("Enter Login name");
  document.f1.t1.focus();
  return false;
}else if(document.f1.t2.value==""){
  alert("Enter Password");
  document.f1.t2.focus();
  return false;
}else if(document.f1.t2.value.length<6 ){
  alert("Password should be minimum 6 character long");
  document.f1.t2.focus();
  return false;
}else
  return true;
}
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href=""><font color="green"><span>eGrievance</span><small>Solve Your Problems</small></font></a></h1>
      </div>
      <div class="menu_nav">
        <jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
		  <h2>Forget  Password</h2><br />
		  	
          <p class="infopost"></p>
                            
<%! String z1="";  %>
<form action="forget1.jsp" >
<table width="666">
<tr><td>Enter Login name</td>
<td>
   <input type="text" name="t1"  />
<%
try{
z1=request.getParameter("a1");
if(z1.equals("error")){
out.print("<font color=red>Login name/Security Answer is Incorrect</font>");
}
}catch(Exception e){  }
%>

</td></tr>
<tr><td>Security Question</td>
	<td><select name="secques">
			<option> What is your first mobile no ?</option>
			<option> What is your first school name ?</option>
			<option> Who is your favourite actor ?</option>
			<option> Who is your Best friend? </option>
    </select></td></tr>
<tr><td>Security Answer</td>
	<td><input name="secans" type="text" /></td>
	</tr>
	
<tr><td></td><td><input type="submit" value="Go"  /></td></tr>
</table>
</form>
           
          <div class="clr"></div>
        </div>
        
        
      </div>

      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>

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
<script language="javascript">
function verify(){
	var s1= document.f1.t1.value;
	var s2= document.f1.t2.value;
	if( s1==""){
		alert("Password Cannot be Empty");
		document.f1.t1.focus();
		return false;
	}else if( s2==""){
		alert("Confirm Password Cannot be Empty");
		document.f1.t2.focus();
		return false;
	}else if( s1 != s2){
		alert("Password& Confirm Password Does not Match");
		document.f1.t1.focus();
		return false;
	}else if( s1.length <6){
		alert("Password Cannot be Less than 6 Character");
		document.f1.t1.focus();
		return false;
	}else if( s2.length() < 6 ){
		alert("Confirm Password Cannot be Less than 6 Character");
		document.f1.t2.focus();
		return false;
	}else {
		return true;
	}
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
        <jsp:include page="usertop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Password Change</h2>
          <p class="infopost">Enter New Password Info</p>


<form action="uchngpwd1.jsp" id="f1" name="f1">
	  <table width="362">
	  <tr><td>Enter New Pasword </td><td>  <input type="password" name="t1" id="t1" placeholder="Enter Password" /></td></tr>
	  <tr><td>Enter Confirm New Pasword </td><td>  <input type="password" name="t2" id="t2" placeholder="Enter Password" /></td></tr>
	  <tr><td colspan="2" align="center"><input type="submit" value="Submit" onclick="return verify()" /> &nbsp;&nbsp; <input type="reset" value="Reset"/></td></tr>
	  </table>
	  </form>
           
          <div class="clr"></div>
        </div>
        
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <jsp:include page="usermenu.jsp" />
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

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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Department <a href="adeptview.jsp"> View</a></h2>
          <p class="infopost">Enter	Department Detail</p>

 
	   
<form action="adept1.jsp" method="get">
<table border=0>
<tr><td>Name</td> <td><input type="text" name="name" /></td></tr>
<tr><td>Type</td> <td>
		<select name="type" >
		<option value="State Govt.">State Govt.</option>
		<option value="Central Govt.">Central Govt.</option>
		</select>
</td></tr>
<tr><td>Current Address</td> <td><textarea name="cadd" rows="6" cols="30"></textarea></td></tr>
<tr><td>Phone No.</td> <td><input type="text" name="phone" /></td></tr>
<tr><td>Mail ID</td> <td><input type="text" name="mail" /></td></tr>
<tr><td></td> <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
</table></form>


   
          <div class="clr"></div>
        </div>
        
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <jsp:include page="adminmenu.jsp" />
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


		  
			  




        

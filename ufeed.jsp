
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
        <h1><a href=""><font color="green"><span>eGrievance</span></font><small>Solve Your Problems</small></a></h1>
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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Feedback  <a href="ufeedview.jsp">View</a></h2>
          <p class="infopost"></p>


<form action="ufeed1.jsp" method="get">
<table width="97%" height="187">
  <tr>
	<td width="230" align="left" valign="top" class="body" id="Company"><span class="style15">Subject</span></td>
	<td width="368" align="left" valign="top"><input name="sub" type="text" size="40" /></td>
	<td width="186" align="left" valign="top" class="body" id="Contact"><span class="style15">Full Name</span></td>
	<td width="499" align="left" valign="top"><input name="Name" type="text" size="40" /></td>
  </tr>

  <tr>
	<td align="left" valign="top" class="body" id="Phone"><span class="style15"> Phone </span></td>
	<td align="left" valign="top"><input name="Phone" type="text" size="40" /></td>
	<td align="left" valign="top" class="body" id="Email"><span class="style15"> Email </span></td>
	<td align="left" valign="top"><input name="Email" type="text" size="42" /></td>
  </tr>
  <tr>
	<td align="left" valign="top" class="body" id="Comments"><span class="style15"> Questions / Comments </span></td>
	<td align="left" valign="top"><textarea name="comments" cols="43" rows="5"></textarea></td>
	<td align="left" valign="top" class="body" id="Address"><span class="style15">Address </span></td>
	<td align="left" valign="top"><textarea name="Address" rows="5" cols="42"></textarea></td>
  </tr>
  <tr>
	<td></td>
	<td></td><td> <input name="submit" type="submit" class="button " value="Send" /></td>
	<td></td>
  </tr>
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

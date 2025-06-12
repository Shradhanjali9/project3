<%@ include file="dbcon.jsp"%>	
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
        <jsp:include page="emptop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span>State<a href="edistview.jsp"> View</a></h2>
          <p class="infopost"></p>
      
</br>
<form action="edist2.jsp">
<table width="331" height="101">
<tr><td>Choose state Name </td><td> <select name="sid">       
<%
String cid= request.getParameter("cid");
try{ 
ResultSet rs=st.executeQuery("select * from state where cnid='"+cid+"'");
while(rs.next()){  %>
<option value="<%=rs.getString(1)%>"><%=rs.getString(3)%></option>
<%
}
con.close();
}catch(Exception e){  }  %>
</select></td></tr>
<tr><td>Enter District Name</td><td> <input type="text" name="t1" required /></td></tr>
<tr><td colspan="2" align="center"> 
<input type="submit" value="submit" /> &nbsp;&nbsp;<input type="Reset" value="reset" />
</td></tr>
</table>
<input type="hidden" name="cid" value="<%=cid%>"  />
</form>   
			  <div class="clr"></div>
			</div>
			
			
		  </div>
		  <div class="sidebar">
			<div class="gadget">
			  <jsp:include page="empmenu.jsp" />
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

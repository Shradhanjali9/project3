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
        <jsp:include page="usertop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Profile Updation</h2>
          <p class="infopost">Profile Updation</p> 
			  
	<% 
	try{
	String s1=(String)session.getAttribute("uid");
	ResultSet rs= st.executeQuery("select * from user where uid='"+s1+"'");
	if(rs.next()){
	%>
	<form action="uprofile1.jsp" >
	<input type="hidden" name="uid" value="<%=s1%>" />
	<table width="725">
	<tr><td>Name</td> <td><input type="text" name="name" value="<%=rs.getString(2)%>" /></td>
	<td></td>
	<td>Father's Name</td> <td><input type="text" name="fname" value="<%=rs.getString(3)%>" /></td></tr>
	
	<tr><td>Date Of Birth</td> <td><input type="text" name="dob" value="<%=rs.getString(4)%>" /></td>
	<td></td>
	<td>Date of Registratrion</td> <td><input type="text" name="dor" value="<%=rs.getString(5)%>" /></td></tr>
	
	<tr><td>Job</td> <td><input type="text" name="job" value="<%=rs.getString(6)%>" /></td>
	<td></td>
	<td>Designation</td> <td><input type="text" name="desig" value="<%=rs.getString(7)%>" /></td></tr>
	
	<tr><td>Gender</td> <td>
	<% String gen=rs.getString(8);
			if(gen.equalsIgnoreCase("male")){  %>
				<input type="radio" name="gender" value="Male" checked="checked" />Male 
				<input type="radio" name="gender" value="Female" />Female
		<% }else{   %>
				<input type="radio" name="gender" value="Male" />Male 
				<input type="radio" name="gender" value="Female" checked="checked" />Female		
		
		<% } %></td>
	<td></td>
	<td>Mstatus</td> <td>
	<% String msta=rs.getString(9);
			if(msta.equalsIgnoreCase("married")){  %>
				<input type="radio" name="mstatus" value="Married">Married 
				<input type="radio" name="mstatus" value="Single">Single
		<% }else{   %>	
				<input type="radio" name="mstatus" value="Married" checked="checked">Married 
				<input type="radio" name="mstatus" value="Single" checked="checked">Single	
		<%   }  %>
	</td></tr>
	
	<tr><td>Phone</td> <td><input type="text" name="phone" value="<%=rs.getString(10)%>" /></td>
	<td></td>
	<td>Mail ID</td> <td><input type="text" name="mail" value="<%=rs.getString(11)%>" /></td></tr>
	
	<tr><td>Current Address</td> <td><textarea rows="6" cols="30" name="cadd"><%=rs.getString(12)%></textarea></td>
	<td></td>
	<td></td> <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
	</table>
	<%
	}
	con.close();
	}catch(Exception e){ out.print(e); }
	%>
	   
			
			
			   
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

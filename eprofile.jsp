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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span>Profile View.</h2>
          <p class="infopost"></p>
            
<% 
try{
String s1=(String)session.getAttribute("uid");
ResultSet rs= st.executeQuery("select * from  member a, department b  where a.uid='"+s1+"' and a.did=b.did"); 
if(rs.next()){
%>
<form action="eprofile1.jsp">
<input type="hidden" name="uid" value="<%=s1%>" />
<table width="833">
<tr><td width="149">Full Name </td>
	<td width="213"><input type="text" name="fullname" value="<%=rs.getString(2)%>"/></td>
	<td></td>
	<td>Father's Name</td> 
	<td><input type="text" name="fname" value="<%=rs.getString(3)%>" /></td>
</tr>
<tr>
	<td>Date of Birth </td> 
	<td><input type="date" name="dob" value="<%=rs.getString(4)%>" /></td>
	<td></td>
<td>Designation</td>
	<td><input type="text" name="desig" value="<%=rs.getString(7)%>" /></td>
</tr>

<tr>
	<td>Gender</td> 
	<td>
	<% String gen=rs.getString(8);
		if(gen.equalsIgnoreCase("male")){  %>
			<input type="radio" name="gender" value="Male" checked="checked" />Male 
			<input type="radio" name="gender" value="Female" />Female
	<% }else{   %>
			<input type="radio" name="gender" value="Male" />Male 
	
			<input type="radio" name="gender" value="Female" checked="checked" />Female		
	
	<% } %>
	</td>
	<td></td>
	<td>Marital Status</td>
	<td>
	<% String msta=rs.getString(9);
		if(msta.equalsIgnoreCase("maried")){  %>
			<input type="radio" name="mstatus" value="Married">Married 
			<input type="radio" name="mstatus" value="Single">Single
	<% }else{   %>	
			<input type="radio" name="mstatus" value="Married" checked="checked">Married 
			<input type="radio" name="mstatus" value="Single" checked="checked">Single	
	<%   }  %>
	</td>
</tr>
 		
<tr>
	<td>Phone No.</td> 
	<td><input type="text" name="phone" value="<%=rs.getString(10)%>" /></td>
	<td></td>
	<td>Mail ID</td> 
	<td><input type="mail" name="mail" value="<%=rs.getString(11)%>" /></td>
</tr>
<tr>
	<td>Current Address</td> 
	<td><textarea name="cadd" rows="6" cols="30"><%=rs.getString(12)%></textarea></td>
	<td></td>
	<td>Permanent Address</td> 
	<td><textarea name="padd" rows="6" cols="30"><%=rs.getString(13)%></textarea></td>
</tr>
<tr>
<td>Type</td>
<td><input type="text" name="type" value="<%=rs.getString(14)%>"/></td>
<td></td>
<td colspan="2" align="center">
<input type="submit" value="Submit" /> <input type="reset" value="Reset" />
</td>
</tr>
</table>
</form>
<%
}
con.close();
}catch(Exception e){ out.print(e); }  %>


</br>


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

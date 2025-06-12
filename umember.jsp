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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Employee Detail</h2>
          <p class="infopost">Employee Infomation</p>
 

<form action="umember1.jsp">
Choose Employee Name <select name="uid">
<%
try{
ResultSet rs= st.executeQuery("select * from member");
while(rs.next()){   %>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
}catch(Exception e){  }  %>
</select>
<input type="submit" value="Submit" />  
</form>
<br /><br />
   
<% 
try{
ResultSet rs= st.executeQuery("select * from member  order by doj desc limit 5");
%> 
<table border="1" cellpadding="5">
<tr>
	<td>Full Name </td> 
	<td>Father's Name</td> 
	<td>Date of Birth </td> 
	<td>Date of Joining </td> 
	<td>Department</td> 
	<td>Designation</td> 
	<td>Gender</td> 
	<td>Marital Status</td> 
	<td>Phone No.</td> 
	<td>Mail ID</td>
	<td>Type</td> 
</tr>
<% while(rs.next()){  %>
<tr>
	<td> <%=rs.getString(2)%></td>
	<td> <%=rs.getString(3)%></td>
	<td> <%=rs.getString(4)%></td>
	<td> <%=rs.getString(5)%></td>
	<td> <%=rs.getString(6) %> </td>
	<td> <%= rs.getString(7) %></td>
	<td> <%= rs.getString(8)%> 	</td>
	<td> <%= rs.getString(9) %>	</td>
	<td> <%=rs.getString(10)%> </td>
	<td> <%=rs.getString(11)%></td>  
	<td> <%= rs.getString(14)%></td>
</tr>
<%  }  %>
</table> 
<% 
con.close();
}catch(Exception e){   out.print(e);   }   
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

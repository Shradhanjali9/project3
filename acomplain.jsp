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
        <jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Complain Status <a href="acompview.jsp">View</a></h2>

          <p class="infopost">List of Complain to be Assigned</p>
<%
try{ 
ResultSet rs= st.executeQuery("select * from problemalert a , department b  where a.did=b.did  and a.status='waiting' order by regdt desc");
if(rs.next()){
rs.beforeFirst();
%>
<table width="862" border="1" cellpadding="4">
<tr> 
<td width="92">Department</td>
<td width="88">Subject</td>
<td width="414">Description</td>
<td width="50">Photo</td> 
<td width="70">Registration Date</td>  
<td width="72">Action</td>
</tr>
<%    while(rs.next()) {   %>
<tr> 
<td><%=rs.getString(13)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><a  href="acomplainview.jsp?a1=<%=rs.getString(1)%>">View</a></td> 
<td><%=rs.getString(9)%></td>  
<td><a href="acomplain1.jsp?a1=<%=rs.getString(1)%>&a2=A">Process</a> <a href="acomplain1.jsp?a1=<%=rs.getString(1)%>&a2=R">Reject</a></td>
</tr>
<%    }   %>
</table>
<%
}else{
	out.print("<font color=red size=3>No New Complain for You.</font><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />");
}
con.close();
}catch(Exception e){   }  %>

		  
		   
   
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

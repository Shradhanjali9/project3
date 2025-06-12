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
			  <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Raise Complain <a href="ucompview.jsp">View</a></h2>
			  <p class="infopost">Complain Status</p>
          
<%
try{ 
ResultSet rs= st.executeQuery("select * from problemalert a , department b where uid='"+(String)session.getAttribute("uid")+"' and a.did=b.did  and a.status='Waiting'");
%>
<table width="928" border="1" cellpadding="4">
  <tr> 
<td>Department</td>
<td>Subject</td>
<td>Description</td>
<td>Photo</td> 
<td>Registration Date</td>
<td>Department Status</td>
<td>Processing Status</td>
</tr>


<%    while(rs.next()) {   %>
<tr> 
<td><%=rs.getString(13)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>

<td><a href="ucompview1.jsp?a1=<%=rs.getString(1)%>">Click</a>
</td> 

<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
</tr>
<%    }   %>
</table>
<%
con.close();
}catch(Exception e){   }  %>
 
 
   
<br /><br /><br /><br /><br /><br /><br />
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

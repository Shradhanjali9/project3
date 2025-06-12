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

          <p class="infopost">Choose Employee to Assign Complain</p>
       
<%
try{ 
String paid=request.getParameter("a1");
String act=request.getParameter("a2");
String did="";
if(act.equals("A")){
ResultSet rs= st.executeQuery("select * from problemalert a , department b where a.paid='"+paid+"' and a.did=b.did and a.status='Waiting' and a.paid='"+paid+"'");
if(rs.next()) {   
did=rs.getString(4);  out.print(did);    %>
<table width="862" border="1" cellpadding="4">
<tr> 
<td width="88">Subject</td>
<td width="414">Description</td>
<td width="50">Photo</td> 
<td width="70">Registration Date</td>   
</tr>
<tr> 
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><a href="acomplainview.jsp?a1=<%=rs.getString(1)%>">View</a></td> 
<td><%=rs.getString(9)%></td>
</tr>
</table>

<form action="acomplain2.jsp">
<input type="hidden" name="paid" value="<%=paid%>" />
Assign Employee <select name="mid">
<%
rs=st.executeQuery("select * from member where did='"+did+"'");
while(rs.next()){
%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%  }  %>
</select>
<input type="submit" value="Go" />
</form>
<%
}}else{
	st.executeUpdate("update problemalert set status='Reject' where paid='"+paid+"'");
	out.print("<font color=red size=3>Complain is Rejected.</font>");
}
con.close();
}catch(Exception e){ out.print(e);  }  %>

		  
		   
           
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

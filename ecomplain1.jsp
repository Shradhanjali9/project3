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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Complain <a href="ecompview.jsp">View</a></h2>
          <p class="infopost">Solution of the Complain</p>

          <%
try{ 
String paid=request.getParameter("a1");
ResultSet rs= st.executeQuery("select * from problemalert a , department b where a.paid='"+paid+"' and   a.did=b.did  and a.status='Processing'");
if(rs.next()){
%>
<form action="ecomplain2.jsp">
<input type="hidden" name="paid" value="<%=paid%>" />
<table width="640" cellpadding="4">
<tr> <td width="240">Department</td>
<td width="376"><%=rs.getString(13)%></td></tr>
<tr> <td>Subject</td><td><%=rs.getString(5)%></td></tr>
<tr> <td height="107">Description</td>
<td><%=rs.getString(6)%></td> </tr>
<tr> <td>Registration Date</td><td><%=rs.getString(9)%></td></tr>
<tr> <td>Action</td><td><textarea name="solu" rows="6" cols="60"></textarea></td></tr> 
<tr> <td></td><td><input type="submit" value="Submit" /></td></tr>
</table>
</form>
<%    
}   
con.close();
}catch(Exception e){ out.print(e);  }  %>

  
           
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

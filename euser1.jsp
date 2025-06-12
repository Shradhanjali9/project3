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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> employee Home</h2>
          <p class="infopost"></p>
            <h2>User Profile</h2><br />
          
          
<% 
try{
String s1=request.getParameter("uid");
ResultSet rs= st.executeQuery("select * from user where uid='"+s1+"'");
if(rs.next()){
%>

<table width="833" height="209">
<tr><td>Name</td> <td><strong><%=rs.getString(2)%></strong></td>
<td></td>
<td>Father's Name</td> <td><strong><%=rs.getString(3)%></strong></td></tr>

<tr><td>Date of Birth</td> <td><strong><%=rs.getString(4)%></strong></td>
<td></td>
<td>Date of Registration</td> <td><strong><%=rs.getString(5)%></strong></td></tr>

<tr><td>Job</td> <td><strong><%=rs.getString(6)%></strong></td>
<td></td>
<td>Designation</td> <td><strong><%=rs.getString(7)%></strong></td></tr>

<tr><td>Gender</td> <td><strong><%= rs.getString(8)%></strong></td>
<td></td>
<td>Marital Status</td> <td><strong><%= rs.getString(9)%> </strong></td></tr>

<tr><td>Phone</td> <td><strong><%=rs.getString(10)%></strong></td>
<td></td>
<td>Mail Id</td> <td><strong><%=rs.getString(11)%></strong></td></tr>

<tr><td>Current Address</td> <td><strong><%=rs.getString(12)%></strong></td>
<td></td>
<td></td> <td></td></tr>
</table>  
<% 
}
con.close();
}catch(Exception e){   out.print(e);   }   
%>





<br /><br /><br /><br /><br />
           
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

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


   <% 
try{
ResultSet rs= st.executeQuery("select * from member a, department b where a.uid='"+request.getParameter("uid")+"' and a.did=b.did");
if(rs.next()){  %> 

<table width="303" cellpadding="5">
<tr><td>Full Name </td> <td><strong><%=rs.getString(2)%></strong></td></tr>
<tr><td>Father's Name</td><td> <strong><%=rs.getString(3)%></strong></td> </tr>
<tr><td>Date of Birth </td> <td> <strong><%=rs.getString(4)%></strong></td></tr>
<tr><td>Date of Joining </td> <td> <strong><%=rs.getString(5)%></strong></td></tr>
<tr><td>Department</td> <td> <strong><%=rs.getString(16)%></strong></td></tr>
<tr><td>Designation</td> <td> <strong><%=rs.getString(7)%></strong></td></tr>
<tr><td>Gender</td> <td> <strong><%=rs.getString(8)%></strong></td></tr>
<tr><td>Marital Status</td> <td> <strong><%=rs.getString(9) %></strong></td></tr>
<tr><td>Phone No.</td> <td> <strong><%=rs.getString(10)%></strong></td></tr>
<tr><td>Mail ID</td><td> <strong><%=rs.getString(11)%></strong></td></tr>
<tr><td>Type</td> <td> <strong><%=rs.getString(14)%></strong></td></tr>
</table> 
<%  
}
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

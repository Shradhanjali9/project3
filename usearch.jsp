<%@ include file="dbcon.jsp" %>
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
        <h1><a href=""><font color="green"><span>eGrievance</span></font><small>Solve Your Problems</small></a></h1>
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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> User Home</h2>
          <p class="infopost"></p>
  
  
  <% 
	 try{
	 	String ty= request.getParameter("h1");
		String val=request.getParameter("dt");
		String qry="";
		if( ty.equalsIgnoreCase("dates"))
		       qry="select * from  user a, problemalert b where a.uid=b.uid and b.regdt='"+val+"'  order by a.name";
		else
		       qry="select * from  user a, problemalert b where a.uid=b.uid and b.uid='"+val+"'  order by a.name";
			   
		ResultSet  rs = st.executeQuery(qry);
		if(rs.next()){
		    rs.beforeFirst();
%>
  			<table border="1"><tr><td>Slno.</td><td>Name</td><td>Subject </td><td>Description</td><td>Status</td></tr>
<%		
			int i=1;
			while(rs.next()) {
  %>
				<tr><td>i++</td><td><%=rs.getString(2)%></td><td><%=rs.getString(17)%> </td><td><%=rs.getString(18)%></td><td><%=rs.getString(23)%></td></tr>
  <%   		}  %>
  			</table>	
  
  <%     }else{		
	  			out.print("<font color=red size=3>No data Found on "+ val +"</font>");
  		}
		con.close();
	 }catch(Exception e){ }
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

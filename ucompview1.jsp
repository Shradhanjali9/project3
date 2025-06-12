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
String file="";
try{ 

ResultSet rs= st.executeQuery("select * from problemphoto where paid='"+request.getParameter("a1")+"'");
if(rs.next()){
 rs.beforeFirst();
 while(rs.next()){	
 
 file=rs.getString(4);
	if(rs.getString("type").equalsIgnoreCase("image")){ %>
 	<img src="./images/problem/<%=rs.getString(4)%>" width="200" height="200" />
<% }else{  %>
	<video height="400" width="350" controls> 
	<source src="./images/problem/<%=file%>" type="video/mp4">	
	Browser does not support video
	</video> 
<%  }
  }	
}else {

	out.print("<font color=green size=3>User has not Uploaded Image/Video</font>");
}
  rs= st.executeQuery("select photo from problemalert where paid='"+request.getParameter("a1")+"'");
	if(rs.next()){  %>
	<br />++			Please Click to See   <a href="./images/problem/<%=rs.getString(1)%>">Pdf File</a>	
<% 	}else
		out.print("<font color=green size=3>User has not Uploaded Image/Video</font>");

con.close();
}catch(Exception e){  out.print(e); 	  } 
 %> 
   
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

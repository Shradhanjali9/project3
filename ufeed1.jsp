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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Feedback <a href="ufeedview.jsp">View</a></h2>
          <p class="infopost"></p>



<%
try{ 
String sub = request.getParameter("sub");
String name = request.getParameter("Name");
String address = request.getParameter("Address");
String phone = request.getParameter("Phone");
String email = request.getParameter("Email");
String comment = request.getParameter("comments"); 
String dt= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
ResultSet rs=st.executeQuery("select * from feedback where sub='"+sub+"' and name='"+name+"' and name='"+name+"' and addr='"+address+"' and phone='"+phone+"' and mail='"+email+"'  and fdt='"+dt+"'");
if(rs.next()){
	out.println("<font color=red size=+1>Your feedback on "+sub+" is Already Stored.</font>");
}else{
	String fid="";
	int cnt=0;
    rs=st.executeQuery("select max(substr(feid,2)) from feedback");
	try{
	    if(rs.next())
		 {
		   cnt=rs.getInt(1);
		  }
       }catch(Exception ee){  }
	 cnt++;
	 if(cnt>0 && cnt<10)
         fid="F0000"+cnt;
	else if(cnt>9 && cnt<100)
	      fid="F000"+cnt;
	else if(cnt>99 && cnt<1000)
	      fid="F00"+cnt;
	else if(cnt>999 && cnt<10000)
	      fid="F0"+cnt;
	else
	      fid="F"+cnt;
	
	String qry="insert into feedback values('"+fid+"', '"+sub+"', '"+name+"', '"+address+"' ,'"+phone+"', '"+email+"', '"+comment+"', '"+dt+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	out.println("<font color=green size=+1>Thank You for Feedback on "+sub+".</font>");
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

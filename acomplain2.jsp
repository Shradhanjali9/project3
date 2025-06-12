
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
          <p class="infopost">Complain Assignment Status</p> 
<%
try{ 
String paid=request.getParameter("paid");
String mid=request.getParameter("mid");
String dt = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new java.util.Date());
String qry="select * from problemstatus where paid='"+paid+"' and  mid='"+mid+"'";
ResultSet rs=st.executeQuery(qry);
if(rs.next()){	
	out.print("<font color=red size=3>Complain is already Forwarded. !!</font>");
}else{
	
	qry="select max(substr(psid,3)) from problemstatus";
	rs=st.executeQuery(qry); 
	String psid="";
	int cnt=0;
	try{
		if(rs.next()){
			cnt= rs.getInt(1);
		}
	}catch(Exception ee){ cnt=0;   }
	cnt++;
	if(cnt>0 && cnt<10)
		psid="PS000"+cnt;
	else if(cnt>9 && cnt<100)
		psid="PS00"+cnt;
	else if(cnt>9 && cnt<100)
		psid="PS0"+cnt;
	else  
		psid="PS"+cnt;
		
	 qry="insert into problemstatus  values('"+psid+"','"+paid+"','"+mid+"','1111-11-11', '', 'Procesing')";
	
	st.executeUpdate(qry);
	qry="update problemalert set mid='"+mid+"',padt='"+dt+"', status='Processing' where paid='"+paid+"'";
	
	st.executeUpdate(qry);	
	out.print("<font color=green size=3>Complain is Forwarded.</font>");
}
con.close();
}catch(Exception e){ out.print("Your complain is Rejected."); 
                     out.print(e); }  %>

           
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

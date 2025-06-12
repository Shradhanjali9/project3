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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %>  </span>to New Employee Sign up</h2>
          <p class="infopost"></p>
          
		  		  	
<%
try{
String logname = request.getParameter("logname");

ResultSet rs=st.executeQuery("select * from login where logname='"+logname+"'");
if(rs.next()){	
	 out.println("<font color=red size=3>"+logname+" is Already Registered</font>");
}else{

	String pwd = request.getParameter("pwd");
	String secques = request.getParameter("secques");
	String secans = request.getParameter("secans");
	String fullname = request.getParameter("fullname");
	String fname = request.getParameter("fname");
	String dob = request.getParameter("dob");
	String did = request.getParameter("did");
	String desig = request.getParameter("desig");
	String gender = request.getParameter("gender");
	String mstatus = request.getParameter("mstatus");
	String phone = request.getParameter("phone");
	String mail = request.getParameter("mail");
	String cadd = request.getParameter("cadd");
	String padd = request.getParameter("padd");
	String type = request.getParameter("type");

	String doj=  new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) ;
	 rs=st.executeQuery("select max(substr(uid,2)) from member");

	 
	String uid="";
	int cnt=0;
	try{
		if(rs.next()){
			cnt= rs.getInt(1);
		}
	}catch(Exception ee){ cnt=0;   }
	cnt++;
	if(cnt>0 && cnt<10)
		uid="E0000"+cnt;
	else if(cnt>9 && cnt<100)
		uid="E000"+cnt;
	else if(cnt>9 && cnt<100)
		uid="E00"+cnt;
	else if(cnt>99 && cnt<1000)
		uid="E0"+cnt;
	else  
		uid="E"+cnt;
	
	
	
	 String qry="insert into login  values('"+uid+"','"+logname+"','"+pwd+"','Employee','Y','"+secques+"','"+secans+"','')";
	st.executeUpdate(qry);
	
	   qry="insert into member  values('"+uid+"', '"+fullname+"', '"+fname+"', '"+dob+"',  '"+doj+"',  '"+did+"',  '"+desig+"',  '"+gender+"',  '"+mstatus+"',  '"+phone+"', '"+mail+"', '"+cadd+"', '"+padd+"', '"+type+"')";
	st.executeUpdate(qry);
	
	
	out.print("<font color=green size=3>"+logname+" is Registered Successfully. Please Login !!</font>");
}
con.close();
}catch(Exception e){  out.print(e);}
%>
		  
		  

		  
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

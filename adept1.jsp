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
          <h2><span>Welcome  to </span> Department <a href="adeptview.jsp"> View</a></h2>
          <p class="infopost">Department Entry Status</p>


<h2>Department <a href="adeptview.jsp">View</a></h2><br />
<%
try{
String name = request.getParameter("name");
String type = request.getParameter("type");
ResultSet rs=st.executeQuery("select * from department where name='"+name+"' and type='"+type+"'");
if(rs.next()){
	out.print("<font color=red size=+1>"+name+" is already Registered.</font>");
}else{
	String cadd = request.getParameter("cadd");
	String phone = request.getParameter("phone");
	String mail = request.getParameter("mail");
	
	rs=st.executeQuery("select max(substr(did,2)) from department");
	String did="";
	int cnt=0;
	try{
	    if(rs.next()){
			cnt=rs.getInt(1);
		}
	}catch(Exception ee){  }	
	cnt++;
	if(cnt>0 && cnt<10)
		did="D00"+cnt;
	else if(cnt>9 && cnt<100)
		did="D0"+cnt;
	else  
		did="D"+cnt;
 
	st.executeUpdate("insert into department values('"+did+"','"+name+"','"+type+"','"+cadd+"','"+phone+"','"+mail+"')");
	
	out.print("<font color=green size=+1>"+name+" is Registered Successfully.</font>");
}
con.close();
}catch(Exception e){  }
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

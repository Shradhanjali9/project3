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


<%
try{
int cnt=0;
ResultSet rs=st.executeQuery("select count(*) from problemalert where mid='"+(String)session.getAttribute("uid")+"' and status='Processing'");
try{
	if(rs.next()){
		cnt=rs.getInt(1);
	}
}catch(Exception ee){ }
con.close();
if(cnt != 0){
	out.print("<font color=olive size=+1>"+cnt+" new Complain is Registered. Please Solve from Complain menu.</font>");
}else{
	out.print("<font color=red size=+1>No new Complain is available.</font>");
}
con.close();
}catch(Exception e){  }
%>

           <marquee direction="left" behavior="slide">
           <div> <img src="images/mahatma.jpg" height="200" width="200" /><img src="images/Theme-6.jpg" height="200" width="200" /><img src="images/modi-56.jpg" height="200" width="200" /><img src="images/LingrajTemple.jpg" height="200" width="200" /><img src="images/kalam.jpg" height="200" width="200" /></div>
		   </marquee>
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

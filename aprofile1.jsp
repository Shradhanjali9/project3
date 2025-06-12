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
        <jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Edit Status</h2>
          <p class="infopost">Profile Updation Status</p>
          
<%

String uid = (String)session.getAttribute("uid");
String fullname=request.getParameter("fullname");
try{
String fname=request.getParameter("fname");
String dob=request.getParameter("dob");
String desig=request.getParameter("desig");
String gender=request.getParameter("gender");
String mstatus=request.getParameter("mstatus");
String phone=request.getParameter("phone");
String mail=request.getParameter("mail");
String cadd=request.getParameter("cadd");
String padd=request.getParameter("padd"); 

String qry="update member set fullname='"+fullname+"', fname='"+fname+"', dob='"+dob+"', desig='"+desig+"', gender='"+gender+"', mstatus='"+mstatus+"', phone='"+phone+"', mail='"+mail+"', cadd='"+cadd+"', padd='"+padd+"' where uid='"+uid+"'" ;
//out.print(qry);
st.executeUpdate(qry);
out.print("<font size=2 color=green>"+fullname.toUpperCase()+" Profile is Updated Successfully.</font>"); 
 
con.close();
}catch(Exception e){ 
out.print("<font size=2 color=red>"+fullname.toUpperCase()+" Profile is Not Updated.</font>");
} 
%>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>	  
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

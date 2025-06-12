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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Profile Updation</h2>
          <p class="infopost">Profile Updation Status</p>
               
          
<% 
try{
String s1=(String)session.getAttribute("uid");
String name = request.getParameter("name");
String fname = request.getParameter("fname");
String dob = request.getParameter("dob");
String dor = request.getParameter("dor");
String job = request.getParameter("job");
String desig = request.getParameter("desig");
String gender = request.getParameter("gender");
String mstatus = request.getParameter("mstatus");
String phone = request.getParameter("phone");
String mail = request.getParameter("mail");
String cadd = request.getParameter("cadd");

String z = "";
for(int i=0;i<cadd.length();i++)
if( ((int)cadd.charAt(i)) == 92)
  z = z + "\\\\";
else if( ((int)cadd.charAt(i)) == 39)
  z = z + "'\'";
else 
  z = z+ cadd.charAt(i);

st.executeUpdate("update user set name='"+name+"', fname='"+fname+"', dob='"+dob+"', dor='"+dor+"', job='"+job+"', desig='"+desig+"', gender='"+gender+"', mstatus='"+mstatus+"', phone='"+phone+"', mail='"+mail+"', cadd='"+z+"' where uid='"+s1+"'");
out.print("<font color=green size=+1>"+name+" is Updated Successfully.</font>");
con.close();
}catch(Exception e){ out.print(e); }
%>
   
		
		
		 <br /><br /><br /><br /><br />
           
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

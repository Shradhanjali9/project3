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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Department <a href="adeptview1.jsp"> View</a></h2>
          <p class="infopost"></p>
	
	
		 <h2>Department <a href="adeptview.jsp">View</a></h2><br />
			
			  

	try{
	String did=request.getParameter("did");
	String name = request.getParameter("name");
	String type = request.getParameter("type");
	String cadd = request.getParameter("cadd");
	String phone = request.getParameter("phone");
	String mail = request.getParameter("mail");
	
	st.executeUpdate("update department set name='"+name+"', type='"+type+"', cadd='"+cadd+"', phone='"+phone+"', mail='"+mail+"' where did='"+did+"'");
	out.print("<font color=green size=+1>"+name+" is Updated Successfully.</font>");
	con.close();
	}catch(Exception e){   }  %>	   
			
			<br /><br />
			  
				   
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

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
        <jsp:include page="emptop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span>State<a href="edistview.jsp"> View</a></h2>
          <p class="infopost"></p>
     
	</br>
<form action="edist1.jsp">

Choose Country Name<select name="cid"> 
<%
try{ 
ResultSet rs=st.executeQuery("select * from country");
while(rs.next()){  %>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
con.close();
}catch(Exception e){  }  %>
</select> <input type="submit" value="Go" />
</form>
			<%
			try{
			 String  z1=request.getParameter("a1");
			 if(z1.equals("error")){
				out.print("<font color=red size=3>Country Name is Already Exist. Try Another !!</font>");
			 }
			}catch(Exception e){  }
			
			%>
			   
		   
				   
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

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
			  <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Department <a href="adeptview.jsp"> View</a></h2>
			  <p class="infopost"></p>

<h2>Department <a href="adeptview.jsp">View</a></h2><br />
		
		  
	<% 
	try{
	String s1=request.getParameter("did");
	ResultSet rs= st.executeQuery("select * from department where did='"+s1+"'");
	if(rs.next()) {   %>
	<form action="adeptview2.jsp">
	<input type="hidden" name="did" value="<%=s1%>" />
	<table>
	<tr><td>Name</td> <td><input type="text" name="name" value="<%=rs.getString(2)%>" /></td></tr>
	<tr><td>Type</td> <td><input type="text" name="type" value="<%=rs.getString(3)%>" /></td></tr>
	<tr><td>Address</td> <td><textarea name="cadd" rows="6" cols="30"><%=rs.getString(4)%></textarea></td></tr>
	<tr><td>Phone</td> <td><input type="text" name="phone" value="<%=rs.getString(5)%>" /></td></tr>
	<tr><td>Mail ID</td> <td><input type="text" name="mail" value="<%=rs.getString(6)%>" /></td></tr>
	<tr><td></td> <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
	</table>
	</form>
	<%    }    
	con.close();
	}catch(Exception e){   out.print(e);   }   
	%>
	
			  
		   
        
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

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
        <jsp:include page="usertop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
			  <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Raise Complain <a href="ucompview.jsp">View</a></h2>
			  <p class="infopost">Complain Uploading</p>

				  
		<form action="ucomplain1.jsp" method=get><table border=0>
		<tr><td>Department</td> <td><select name="did">
		<%
		try{ 
		ResultSet rs=st.executeQuery("select * from department order by name");
		while(rs.next()){	%>
			<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
		<%
		}
		con.close();
		}catch(Exception e){   }  %>
		</select></td></tr>
		<tr><td>Topic of Complain</td> <td><textarea name="subj" rows="5" cols="80" placeholder"within 300 character"></textarea></td></tr>
		<tr><td>Decription of Grievance</td> <td><textarea name="descrip" rows="15" cols="80"  placeholder"within 6000  character"></textarea></td></tr>
		<tr><td></td> <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
		</table></form>
	
				   
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

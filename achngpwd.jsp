<%@ include  file="dbcon.jsp" %> 
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

<script language="javascript">
function verify(){
	var s1= document.f1.t1.value;
	var s2= document.f1.t2.value;
	if( s1==""){
		alert("Password Cannot be Empty");
		document.f1.t1.focus();
		return false;
	}else if( s2==""){
		alert("Confirm Password Cannot be Empty");
		document.f1.t2.focus();
		return false;
	}else if( s1 != s2){
		alert("Password& Confirm Password Does not Match");
		document.f1.t1.focus();
		return false;
	}else if( s1.length <6){
		alert("Password Cannot be Less than 6 Character");
		document.f1.t1.focus();
		return false;
	}else if( s2.length() < 6 ){
		alert("Confirm Password Cannot be Less than 6 Character");
		document.f1.t2.focus();
		return false;
	}else {
		return true;
	}
}
</script>
</head>
	<body>
		<div class="main">
		  <div class="header">
			<div class="header_resize">
			 
			  </div>
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
				 <h2>Welcome <%=(String) session.getAttribute("name") %> to Change Password.</h2>
				  <p class="infopost"></p>
				 
	  <form action="achngpwd1.jsp" id="f1" name="f1">
	  <table width="362">
	  <tr><td>Choose User</td><td> 
	   <select name="uid">
	 <%
	 try{
	 ResultSet rs=st.executeQuery("select * from login");
	 while(rs.next()){%>
	 <option value="<%=rs.getString(1)%>"> <%=rs.getString(2)%></option>
	 <%}
	 con.close();
	 }catch(Exception e){ }
	 %>
	 </select>
	  
	  
	   </td></tr>
	  <tr><td>Enter New Pasword </td><td>  <input type="password" name="t1" id="t1" placeholder="Enter Password" /></td></tr>
	  <tr><td>Enter Confirm New Pasword </td><td>  <input type="password" name="t2" id="t2" placeholder="Enter Password" /></td></tr>
	  <tr><td colspan="2" align="center"><input type="submit" value="Submit" onclick="return verify()" /> &nbsp;&nbsp; <input type="reset" value="Reset"/></td></tr>
	  </table>
	  </form>
	 
		   
				   
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

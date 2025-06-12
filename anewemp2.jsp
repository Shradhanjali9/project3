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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> to New Employee Sign up</h2>
          <p class="infopost"></p>
          
		<form action="anewemp3.jsp" >
		<table width="833">
		<tr><td width="149">Login Name </td>
			<td width="261"><input type="text" name="logname" value="<%= request.getParameter("a1")%>" readonly="true" >Available</td>
			<td width="36"></td>
			<td width="150">Enter Name</td>
			<td width="213"><input type="text" name="fullname"/></td>
		</tr>
		<tr><td width="149">Password </td>
			<td width="261"><input type="password" name="pwd" required  ></td>
			<td width="36"></td>
			<td width="150">Confirm Password</td>
			<td width="213"><input type="password" name="pwd1" required/></td>
		</tr>
		<tr>
			<td>Father's Name</td> 
			<td><input type="text" name="fname" /></td>
			<td></td>
			<td>Date of Birth </td> 
			<td><input type="date" name="dob" required /></td>
		</tr>
		
 		<tr>
			<td>Department</td> 
			<td><select name="did">
<%
try{
ResultSet rs= st.executeQuery("select * from department");
while(rs.next()){   %>
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
con.close();
}catch(Exception e){  }  %>
</select></td>
			<td></td>
			<td>Designation</td> 
			<td><select name="desig">
				
				<option value="Sr. Engineer">Sr. Engineer</option>
				<option value="Jr. Engineer">Jr. Engineer</option>
				<option value="Head Clerk">Head Clerk</option>
				<option value="Clerk">Clerk</option>
				<option value="Employee">Employee</option>
			</select></td>
		</tr>
		
		<tr>
			<td>Gender</td> 
			<td><input type="radio" name="gender" value="Male" checked="checked" />Male <input type="radio" name="gender" value="Female" />Female</td>
			<td></td>
			<td>Marital Status</td> 
			<td><input type="radio" name="mstatus" value="Married" checked="checked">Married <input type="radio" name="mstatus" value="Single">Single</td>
		</tr>
		
		<tr>
			<td>Phone No.</td> 
			<td><input type="text" name="phone" /></td>
			<td></td>
			<td>Mail ID</td> 
			<td><input type="mail" name="mail" /></td>
		</tr>
		<tr>
			<td>Current Address</td> 
			<td><textarea name="cadd" rows="6" cols="30"></textarea></td>
			<td></td>
			<td>Permanent Address</td> 
			<td><textarea name="padd" rows="6" cols="30"></textarea></td>
		</tr>
		
		<tr>
			<td>Security Question</td> 
			<td><select name="secques">
				<option value="What is your first mobile no. ?">What is your first mobile no. ?</option>
				<option value="What is your first school name ?">What is your first school name ?</option>
				<option value="Who is your favourite actor ?">Who is your favourite actor  ?</option>
				<option value="Who is your Best friend? ?">Who is your Best friend ?</option>
			
			</select></td>
			<td></td>
			<td>Security Answer</td> 
			<td><input type="text" name="secans" /></td>
		</tr>
		
		<tr>
			<td>Type</td> 
			<td><select name="type">
				<option value="HOD">HOD</option> 
				<option value="Asst. HOD">Asst. HOD</option> 
				<option value="Employee">Employee</option> 
			</select></td>
			<td></td>
			<td colspan="2" align="center">
			<input type="submit" value="Submit" /> <input type="reset" value="Reset" />
			</td>
		</tr>
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

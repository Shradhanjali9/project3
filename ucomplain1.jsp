<%@ page language="java" %>
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
			  <p class="infopost">Complain Photo/Video Uploading</p>
<%
String paid="";
try{
String uid =(String)session.getAttribute("uid");
String did = request.getParameter("did");
String subj = request.getParameter("subj");
String descrip = request.getParameter("descrip");


String qry="select * from problemalert where uid='"+uid+"' and did='"+did+"' and subj='"+subj+"'";
ResultSet rs=st.executeQuery(qry);
if(rs.next()){	
out.print("<font color=red size=3 >Complain on'"+subj+"' is already Registered. !!</font>");
}else{
rs=st.executeQuery("select max(substr(paid,2)) from problemalert");
int cnt=0;
try{
	if(rs.next()) {
		cnt=rs.getInt(1);
	}
}catch(Exception ee){  }
cnt++;
if(cnt >0 & cnt <10)
	paid="P000"+cnt;
else if(cnt >9 & cnt <100)
	paid="P00"+cnt;
else if(cnt > 99 & cnt <1000)
	paid="P0"+cnt;
else  
	paid="P"+cnt;
	
session.removeAttribute("paid");
session.setAttribute("paid", paid);

String dt = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new java.util.Date());

qry="insert into problemalert values('"+paid+"', '"+uid+"','', '"+did+"', '"+subj+"','"+descrip+"','','1111-11-11', '"+dt+"','','Waiting')";
 //out.print("<br>"+qry+"<br>"); 
 st.executeUpdate(qry);
 out.print("<font color=green size=3>Complain on '"+subj+"' is Registered. !!</font>");
}
con.close();
}catch(Exception e){ out.print(e);  }  %> 
	<br /><br />

<table><tr><td>
<form  method="post" enctype="multipart/form-data" action="upserver">
<input type="hidden" name="paid" value="<%=(String) session.getAttribute("paid") %>" />
  <table border="0">
	<tr>
	<td colspan="2" align="center">UPLOAD  PHOTO</td>
	</tr>
	<tr>
	<td colspan="2" align="center"> Type  <input type="radio" name="type" value="Image" checked="checked" />Image<input type="radio" name="type" value="Video" />Video </td>
	</tr>
	<tr>
	<td width="152">Choose the file To upload:</td>
	<td width="261"><input name="file" type="file"></td>
	</tr>
	<tr>
	<td colspan="2" align="center"> </td>
	</tr>
	<tr>
	<td height="26" colspan="2" align="center"><input type="submit" value="Upload"> </td>
	</tr>	
</table>
</form>
</td><td>
<form  method="post" enctype="multipart/form-data" action="upserver1">
<input type="hidden" name="paid" value="<%=(String) session.getAttribute("paid") %>" />
  <table border="0">
	<tr>
	<td colspan="2" align="center">UPLOAD  PDF File</td>
	</tr>
	<tr>
	<td colspan="2" align="center">   </td>
	</tr>
	<tr>
	<td width="152">Choose the file To upload:</td>
	<td width="261"><input name="file" type="file"></td>
	</tr>
	<tr>
	<td colspan="2" align="center"> </td>
	</tr>
	<tr>
	<td height="26" colspan="2" align="center"><input type="submit" value="Upload"> </td>
	</tr>	
</table>
</form>
 </td></tr></table>
 
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

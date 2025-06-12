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
<script language="javascript">
function verify(){
var z=document.f1.t1.value;
if(z==""){
  alert("Please Edit District Name");
  return false;
}else
  return true;
}
</script>
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

<% 
try{ 
int cnt=1;
String cid= request.getParameter("cid");
String sid= request.getParameter("sid");

String qry="select * from state a, district b where a.stid='"+sid+"' and a.cnid='"+cid+"' and  a.stid=b.stid";
//out.print(qry);
ResultSet rs= st.executeQuery(qry);
if(rs.next()) {  
 rs.beforeFirst(); %>
 <br />
<table width="659" border="1" cellpadding="5">
<tr>
<td>Sl. No.</td>
<td>State Name</td> 
<td>District Name</td> 
<td>Edit District Name</td> 
</tr> 
<% while(rs.next()) { %>
<tr>
<td><%=cnt++%></td> 
<td><%=rs.getString(3)%></td>  
<td><%=rs.getString(7)%></td>
<td>
<form action="edistupd.jsp" name="f1" id="f1">
<input type="hidden" name="dstid" value="<%=rs.getString(4)%>">
<input type="text" name="t1" id="t1" placeholder="Enter Modified Name" required /><input type="submit" value="Go"  onclick="return verify()" />
</form>
</td> </tr>
<% }   %>
</table>
<% }

con.close();
}catch(Exception e){   out.print(e);   }   
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

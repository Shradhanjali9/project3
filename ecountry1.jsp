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
          <h2><span>Welcome <%= (String) session.getAttribute("name") %> to </span> Country <a href="ecountryview.jsp"> View</a></h2>
          <p class="infopost"></p>
    
<%
String z1="";
try{
	z1=request.getParameter("t1");
	ResultSet rs=st.executeQuery("select * from country where cntname='"+z1+"'");
	if(rs.next()){
		z1="error";
	}else{
		rs=st.executeQuery("select max(substr(cnid,3)) from Country");
 	 	String uid="";
		int cnt=0;
		try{
			if(rs.next()){
				cnt= rs.getInt(1);
			}
		}catch(Exception ee){ cnt=0;   }
		cnt++;
		if(cnt>0 && cnt<10)
			uid="CN0000"+cnt;
		else if(cnt>9 && cnt<100)
			uid="CN000"+cnt;
		else if(cnt>9 && cnt<100)
			uid="CN00"+cnt;
		else if(cnt>99 && cnt<1000)
			uid="CN0"+cnt;
		else  
			uid="CN"+cnt;
		String qry="insert into country values('"+uid+"','"+z1+"')";
		st.executeUpdate(qry);
		out.print("<font color=green size=3>"+z1+" is Updated Successfully.</font>"); 
	}
con.close();
}catch(Exception e){  out.print(e);}
if(z1.equals("error")){
%>
	<jsp:forward page="ecountry.jsp" >
		<jsp:param name="a1" value="<%=z1%>" />
	</jsp:forward>		  
<% }   %>
           
		   
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

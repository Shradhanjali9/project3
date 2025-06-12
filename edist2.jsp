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
  <%
String cn="", sta="", dt="";
try{
	cn=request.getParameter("cid");
	sta=request.getParameter("sid");
	dt=request.getParameter("t1");
ResultSet rs=st.executeQuery("select * from district where  cnid='"+cn+"'  and stid='"+sta+"'   and dstname='"+dt+"'");
	if(rs.next()){
		out.print("<font color=red size=3>"+dt+" is Already Inserted.</font>"); 
	}else{
		rs=st.executeQuery("select max(substr(dstid,3)) from district");
 	 	String dstid="";
		int cnt=0;
		try{
			if(rs.next()){
				cnt= rs.getInt(1);
			}
		}catch(Exception ee){ cnt=0;   }
		cnt++;
		if(cnt>0 && cnt<10)
			dstid="DS0000"+cnt;
		else if(cnt>9 && cnt<100)
			dstid="DS000"+cnt;
		else if(cnt>9 && cnt<100)
			dstid="DS00"+cnt;
		else if(cnt>99 && cnt<1000)
			dstid="DS0"+cnt;
		else  
			dstid="DS"+cnt;
		String qry="insert into district values('"+dstid+"', '"+cn+"', '"+sta+"','"+dt+"')";
		st.executeUpdate(qry);
		out.print("<font color=green size=3>"+dt+" is Inserted Successfully.</font>"); 
	}
con.close();
}catch(Exception e){  out.print(e);}
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

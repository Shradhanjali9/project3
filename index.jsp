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
        <h1><a href=""><font color="green"><span>eGrievance</span></font> <small>Solve Your Problems</small></a></h1>
      </div>
      <div class="menu_nav">
        <jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/2.png" width="1280" height="293" alt="" /> </a> <a href="#"><img src="images/1.png" width="1280" height="293" alt="" /> </a> <a href="#"><img src="images/13.jpg" width="1280" height="293" alt="" /></a><img src="images/23.jpg" width="1280" height="293" alt="" /><a href="#"><img src="images/3.jpg" width="1280" height="293" alt="" /> </a><a href="#"><img src="images/15.jpg" width="1280" height="293" alt="" /> </a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		<img src="images/indian-emblam-white.gif" width="150" height="180" />
		<p>In India we do not have any direct communication between the  government organization and public for grievance regarding various sector such  as municipality, electricity, water supply, gas supply, pension, etc. To solve  any issue the public has to visit the respected office then submit an  application regarding the issue to the respective person. Public has to visit  the office many times to track the grievance in order to solve the problem,  sometimes the grievance solved immediately or sometimes it takes month and  year. In order to overcome this problem   we propose a web application through which public can post the grievance  or complaints in the  web site and get  them solved in a specified time and can also track the status of the complaint  or grievance he has lodged at any time.</p>
		<p>The people need not go to the higher authorities always when they face  problems.<br />
They can use the service of this software browser and can give their  complaint and the complaint is taken up by the employee of  specified department and he solves the problem.          </p>
          <h2><span>OUR MISSION</span></h2>
          <p class="infopost">
		  
		  </p>
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="179" height="215" alt="" class="fl" /></div>
          <div class="post_content">
            <p>
			To foster excellence in governance and pursuit of administrative reforms through:
			<ul>
			<li>Improvements in government structures and processes. </li>
			<li>Promoting citizen-centric governance with emphasis on grievance redressal. </li>
			<li>Innovations in e-Governance. </li>
			<li>Documentation and dissemination of good practices. </li>
			</ul>
			
			</p>
            
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          
          <p class="infopost">
		  
		  </p>
          <div class="clr"></div>
          
          
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <tr><td><font size="4">Sign In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></td></tr>
          <div class="clr"></div>
		  <form action="login.jsp"  >
          <table>
		  <tr><td><input type="text" name="t1" placeholder="Enter User Name" /></td></tr>
		  <tr><td><input type="password" name="t2" placeholder="Enter Password" /></td></tr>
		  
		  <tr><td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
		  <tr><td> <%
		  try{
				String z1=request.getParameter("a1");
				if(z1.equals("error"))
				   out.print("<font color=red size=2>Invalid Username/Password.</font>");
		 }catch(Exception e){  }
		  %> </td></tr>
		  <tr><td><a href="forget.jsp">Forget Password ?</a></td></tr>
		  <tr><td width="185">New User <a href="newuser.jsp">Sign Up</a></td></tr>
	
		  </table>
		</form>
        </div>
		
		
		<div class="searchform">
          
		  <h2> <span>Related Links</span> </h2>
	<ul>
		<a href="http://recruitment.nic.in/" target="_blank" > <img src="images\nic-recruitment.jpg" height="60" width="200" > </a><br/>    
		
		<a href="http://india.gov.in/" target="_blank"><img src="images\indiagov_logo.jpg" height="60" width="200" > </a><br/>
		
		<a href="http://mail.gov.in/" target="_blank"><img src="images\nic-email.jpg" height="60" width="200"> </a><br/>
		
		<a href="http://mygov.in//" target="_blank"><img src="images\my-gov.jpg" height="60" width="200"  > </a>    <br/>    
		
		<a href="http://goidirectory.gov.in/" target="_blank"><img src="images\goi-web-directory.jpg" height="60" width="200" > </a>  <br/>
		
		
	</ul>
		  
        </div>
		
        <div class="gadget">
          <h2 class="star"><span>Important Links</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="https://scholarships.gov.in/" target="_blank" >NATIONAL SCHOLARSHIP PORTAL</a><br /> </li>
            <li><a href="https://sarathi.nic.in:8443/nrportal/sarathi/HomePage.jsp" target="_blank" >DL APPLICATION</a><br /> </li>
            <li><a href="http://as2.ori.nic.in:8080/web/"  target="_blank">STATE REGISTER,ODISHA TRANSPORT</a><br /> </li>
            <li><a href="http://www.odishatourism.gov.in/Portal/" target="_blank" >ODISHA TOURISM</a><br /> </li>
            <li><a href="http://www.busindia.com/busindia_OSRTC.jsps" target="_blank">FIND YOUR BUS</a><br /> </li>
            <li><a href="http://www.mpsc.mp.nic.in/scholarships/" target="_blank" >PRERANA-NIC MADHYA PRADESH</a><br /> </li>
			
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
     <jsp:include page="fbg.jsp" />
  </div>
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>

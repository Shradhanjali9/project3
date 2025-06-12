<%@ include file="dbcon.jsp" %>
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
<script type="text/javascript">
  $(document).ready(function() {
        $('#slider').s3Slider({
            timeOut: 3000
        });
    });
</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript">
function verify(){
if(document.f1.t1.value==""){
  alert("Enter Login name");
  document.f1.t1.focus();
  return false;
}else if(document.f1.t2.value==""){
  alert("Enter Password");
  document.f1.t2.focus();
  return false;
}else if(document.f1.t2.value.length<6 ){
  alert("Password should be minimum 6 character long");
  document.f1.t2.focus();
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
        <jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
   </div>
  </div>
  
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
<h2>Password Recovery</h2>
		<p>
		  <%! String z1="";  %>
		  <%
  try{
   String name=request.getParameter("t1");
   String ques=request.getParameter("secques");
   String ans=request.getParameter("secans");
   ResultSet rs = st.executeQuery("select * from login where logname='"+name+"' and secques='"+ques+"' and secans='"+ans+"'");
   if(rs.next()){
     z1=rs.getString(3);
      out.println("<font color=green size=+3>Your password is : "+z1+"</font>");
   }else{
      z1="error";
	}
  }catch(Exception e){  } 
 if(z1.equals("error")){
 %>
<jsp:forward page="forget.jsp">
<jsp:param name="a1" value="<%=z1%>" />                      
</jsp:forward>

<%  }  %>                   

<div class="clr"></div>
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

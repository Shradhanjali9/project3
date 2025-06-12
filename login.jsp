<%@ include file="dbcon.jsp" %>
<%!
String uid="",typ="";
%>
<%
try{
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String qry="select * from login where logname='"+s1+"' and pwd='"+s2+"' and status='Y'";
ResultSet rs= st.executeQuery(qry);
typ="";
uid="";
if(rs.next()){
   uid=rs.getString(1);
   typ=rs.getString(4);
   session.removeAttribute("uid");
   session.removeAttribute("type");
   session.removeAttribute("name");
   
   session.setAttribute("uid", uid);
   session.setAttribute("type", typ);
   session.setAttribute("name", (s1.substring(0, s1.indexOf('@'))).toUpperCase()   );
}
con.close();
//out.print(uid+ ": " +typ);
}catch(Exception e){ } 
	if(typ.equalsIgnoreCase("admin")) {   %>
		<jsp:forward page="adminhome.jsp" />
<%	}else if(typ.equalsIgnoreCase("employee")) {   %>
		<jsp:forward page="emphome.jsp" />
<%	}else if(typ.equalsIgnoreCase("user")) {   %>
		<jsp:forward page="userhome.jsp" />
<%	}else {	%>
		<jsp:forward page="index.jsp" >
			<jsp:param name="a1" value="error" />
		</jsp:forward>
<%	}	%>
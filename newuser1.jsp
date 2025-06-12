<%@ include file="dbcon.jsp"%>
<%!  String na="";%>
<%
	try{
		na = request.getParameter("t1"); 
		ResultSet rs=st.executeQuery("select * from login where logname='"+na+"'");
		if(rs.next()){		%>
			<jsp:forward page="newuser.jsp">		
				<jsp:param name="a1" value="error" />
			</jsp:forward>
<%		}else{			%>
			<jsp:forward page="newuser2.jsp">		
				<jsp:param name="a1" value="<%=na%>" />
			</jsp:forward>
<%		}
		con.close();
	}catch(Exception e){}
%>
	
	
﻿
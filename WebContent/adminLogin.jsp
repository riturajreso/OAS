<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OAS</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body bgcolor="#dcdcdc">
<div align="center" id="bold1" class="d1">
<br/>
<label><font face="frankruehl" color="#000000" size="+3">ONLINE ADMISSION SYSTEM</font></label>
</div>
<div align="left" id="RESULT">
     		<a href="index.html"><font face="frankruehl" color="black">Home</font></a>							
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="Aboutus.html"><font face="frankruehl" color="black">About Us</font></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="#"><font face="frankruehl" color="black">Fee</font></a>
       		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="course.html"><font face="frankruehl" color="black">Course</font></a>
       		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="contactus.jsp"><font face="frankruehl" color="black">Contact Us</font></a>			
    		
</div>
<div align="left" id="contact" >
 
<%
int flag=0;
String u_id1=request.getParameter("uname");
String pass1=request.getParameter("pass");
//out.println(u_id1);
session.setAttribute("sesname", u_id1);
PreparedStatement pst1=conn.prepareStatement("select u_id,pass from login where u_id=?");
pst1.setString(1, u_id1);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
	String a=rs.getString(1);
	String b=rs.getString(2);
	//out.println(a);
	//out.println(b);
if(u_id1.equals(a) && (pass1.equals(b)))
{
	flag=1;
}
else
{
	flag=0;
}
}
if(flag==1)
{
	%>
	<h1>Welcome <%out.print(u_id1); %>!!!</h1>
<br>
<br>
<br>
	<p><a href="approve.jsp">Approve Students</a><br></p>
	<% 
}
else
{ %>
<h2><%
out.print("Wrong Username or Password");
%>
<br>
<br>
<br>

<a href="adminLogin.html"> Login Again </a></h2>
<% 
}

pst1.executeUpdate();
pst1.close();
%>
</div>
<div id="RESULT">
     		<font face="frankruehl" color="black">	
     		<marquee behavior="alternate" onmouseover="this.setAttribute('scrollamount',0,0);" onmouseout="this.setAttribute('scrollamount',6,0);">
     		<!-- <a href="Apply.html"><font face="frankruehl" color="ff4500">Apply now</font></a>
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		 -->Welcome to the Online Admission Site
     		<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		<a href="Apply.html"><font face="frankruehl" color="ff4500">Apply now</font></a>
     		 --></marquee>	
     		</font>
</div>
<div align="center" id="footer">
<table cellpadding="1" cellspacing="2">
	<tr>
		<td>
        	<div align="center"><h4>Copyright © Techno India, Saltlake</h4>
        	
        	</div>
        	</td>
  	</tr>
</table>
</div>
</body>
</html>
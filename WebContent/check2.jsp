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
<%
int flag=0;
String search1=request.getParameter("search");
System.out.println(search1);
PreparedStatement pst1=conn.prepareStatement("select u_id from selectedstu where u_id=?");
pst1.setString(1, search1);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
	
	String b=rs.getString(1);

	System.out.println(b);
if(search1.equals(b))
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
	<div align="center" id="contact">
     		<font face="frankruehl" color="#fff8dc">
            </font>
            <font face="Calibri" color="#fff7dc" size="+1"></font>
            <h2>!!! Congratulations !!! <p>Good work.Your hard work has truly paid off.</p></h2>
            <br>
            						
     </div>
	
	<% 
}
else
{
	%>
	<div align="center" id="contact">
     		<font face="frankruehl" color="#fff8dc">
            </font>
            <font face="Calibri" color="#fff7dc" size="+1"></font>
           <h2>!!! Oops !!! Sorry </h2>
            <br>
            						
     </div>
	
	<% 
}

pst1.executeUpdate();
pst1.close();
%>

<br/>
<div align="center" id="footer">
<table cellpadding="1" cellspacing="2">
	<tr>
		<td>
        	<div align="center"><h4>Copyright © Techno India, Saltlake</h4></div>
		</td>
  	</tr>
</table>
</div>
</body>
</html>
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

<div id="container">
  <div id="container_body">
    
    <div id="form_name">
     <div id="errorBox"></div>
     
<h1><u><center>User Registered!!!</center></u></h1>
&nbsp;&nbsp;  
&nbsp;&nbsp;  
&nbsp;&nbsp;  
&nbsp;&nbsp;  
&nbsp;&nbsp;  
&nbsp;&nbsp;  

<br>

<% 
String uname1=request.getParameter("name");
String email1=request.getParameter("email");
String u_id1=request.getParameter("u_id");
String pass1=request.getParameter("pass");
String byr1=request.getParameter("byr");
String bmth1=request.getParameter("bmth");
String bday1=request.getParameter("bday");
String sex1=request.getParameter("sex");
String fname1=request.getParameter("fname");
String btenth1=request.getParameter("btenth");
String pertenth1=request.getParameter("pertenth");
String btwlv1=request.getParameter("btwlv");
String pertwlv1=request.getParameter("pertwlv");
String rank1=request.getParameter("rank");
String course1=request.getParameter("course");

try{
PreparedStatement pst=conn.prepareStatement("insert into Userdetail values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

pst.setString(1,uname1);
pst.setString(2,email1);
pst.setString(3,u_id1);
pst.setString(4,pass1);
pst.setString(5,byr1);
pst.setString(6,bmth1);
pst.setString(7,bday1);
pst.setString(8,sex1);
pst.setString(9,fname1);
pst.setString(10,btenth1);
pst.setString(11,pertenth1);
pst.setString(12,btwlv1);
pst.setString(13,pertwlv1);
pst.setString(14,rank1);
pst.setString(15,course1);
pst.executeUpdate();

pst.close(); 
}
catch(Exception e){
	System.out.println("Error found");
	 request.setAttribute("msg", "Already Registered ");
		%>
		<jsp:forward page="registration.jsp"/>
		<%	
}

%>
<p><center><a href="UserLogin.html">Click here to Login Again</a></center><br></p>
</div>
</div>
</div>

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
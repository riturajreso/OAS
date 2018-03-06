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
<div align="center" id="contact">
     		<img alt="thnku" src="Picture/thnk.jpg" width=400 height=400>					
</div>
<br/>
<%
String curse1 = request.getParameter("curse");
String student = (String)session.getAttribute("sess");
String id;
System.out.println("\tCourse="+curse1);
System.out.println("\tstudent="+student);
int no= Integer.parseInt(student);
  System.out.print("\nabc");
   try{ 
 
       String query1 = "Select * from (select * from userdetail ORDER BY RANK) where rownum <='"+no+"'";
       PreparedStatement pst5=conn.prepareStatement("insert into selectedstu values (?,?)");
       PreparedStatement pst=conn.prepareStatement(query1);
     
       ResultSet rs=pst.executeQuery(query1);
       
       System.out.print("\nxyz\n");
       while(rs.next())
  {
	  
	  id=rs.getString(3);
	  System.out.print("\nmno");
	   try
	  {
	    	
	    	System.out.print("\npqr\n");
	    	pst5.setString(1,curse1);
	    	System.out.println("Entercousre="+curse1);
	    	pst5.setString(2,id);
	    	System.out.println("Enteruid="+id);
	    	pst5.executeUpdate();

	    	 
	  } 	
	    	catch(Exception ee)
	   {
	    		System.out.println("Error found");
	    		}
  
  
    System.out.println("DONE");
  }
  %>
  <% 
rs.close();
pst.close();
conn.close();
}
   catch(Exception q)
   {
	   System.out.print("errror");
	   }
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
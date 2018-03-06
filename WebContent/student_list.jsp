<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   session="true" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OAS
</title>
<script type="text/javascript" src="/gs_sortable.js"></script>
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

<%String name1="" ,email1= "", u_id1="",pass1="",byr1="",bmth1="",bday1="",
sex1="",fname1="",btenth1="",pertenth1="",btwlv1="",pertwlv1="",rank1="",course1="";

    String curse = request.getParameter("curse1");
    String student = request.getParameter("stu");
    session.setAttribute("sess", student);
    System.out.println("\tstudent="+student);
    int no= Integer.parseInt(student);
    System.out.println("Cousre == "+curse);
    System.out.println("No==  "+no);
    
   int x=60,y=120,z=18,w=70;
   String a="it",aa="", b="cse", c="ece",d="ee",e="ei",f="me",g="ft",h="ce",i="bms",j="bca",k="mca",l="mba",m="bba",n="mft",o="mme";
  
   %> 

  
<div id="container">
  <div id="container_body">
    <div>
      <h3 class="form_title">Selected Student</h3>
    </div>
    <div id="form_name">
     
     <div id="errorBox"></div>
     

    

<table id="mytable" width="100%" height="100%" border="1" align=center bordercolor="grey">
<tr>
    <td> 
    <font size="3">Name</font></td>
    <td> 
    <font size="3">Father's Name</font></td>
    <td> 
    <font size="3">10th Board</font></td>
    <td> 
    <font size="3">10th Percentage</font></td>
    <td>
    <font size="3">12th Board</font></td>
    <td> 
    <font size="3">12th Percentage</font></td>
    <td> 
    <font size="3">Rank</font></td>
    
    </tr> 
           <% 
    System.out.print("\nabc");
   try{ 
 
       String query1 = "Select * from (select * from userdetail ORDER BY RANK) where rownum <='"+no+"'";
      
       PreparedStatement pst=conn.prepareStatement(query1);
     
       ResultSet rs=pst.executeQuery(query1);
       
       System.out.print("\nxyz\n");
       while(rs.next())
  {
	  name1=rs.getString(1);
	  email1=rs.getString(2);
	  u_id1=rs.getString(3);
	  pass1=rs.getString(4);
	  byr1=rs.getString(5);
	  bmth1=rs.getString(6);
	  bday1=rs.getString(7);
	  sex1=rs.getString(8);
	  fname1=rs.getString(9);
	  btenth1=rs.getString(10);
	  pertenth1=rs.getString(11);
	  btwlv1=rs.getString(12);
	  pertwlv1=rs.getString(13);
	  rank1=rs.getString(14);
	  course1=rs.getString(15); 
	
  %>
 
<tr>
    <td> 
    <font size="3"><%=name1 %></a></font> <br>
    <td>
    <font size="3"><%=fname1 %></a></font><br>
    <td> 
    <font size="3"><%=btenth1%></a></font></td>
    <td> 
    <font size="3"><%=pertenth1 %></a></font> <br>
    <td>
    <font size="3"><%=btwlv1 %></a></font><br>
    <td> 
    <font size="3"><%=pertwlv1%></a></font></td>
    <td> 
    <font size="3"><%=rank1 %></a></font> <br>
     </td>  
    </tr>
    <% 
  
    System.out.println( );
  }
  %>
   <br>
 
</table>
</br>
  </br>
      <form name = select action="final.jsp" method="post"> 
  <input name="curse" type="hidden" value="<%=curse %>"/>
  <input type="submit" value="SUBMIT" name="submit" id="forsubmit" />
  </form>
  <% 
rs.close();
pst.close();
conn.close();
}catch(Exception q){System.out.print("errror");}
%>
</div>
</div>
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

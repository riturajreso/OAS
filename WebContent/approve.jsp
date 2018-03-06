<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  session="true"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OAS</title>
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
<%
String name1="" ,email1= "", u_id1="",pass1="",byr1="",bmth1="",bday1="",
sex1="",fname1="",btenth1="",pertenth1="",btwlv1="",pertwlv1="",rank1="",course1="";
String curse = request.getParameter("course");
//out.println(curse);
int x=60,y=120,z=18,w=70;
String a="it",aa="", b="cse", c="ece",d="ee",e="ei",f="me",g="ft",h="ce",i="bms",
j="bca",k="mca",l="mba",m="bba",n="mft",o="mme";
%> 

<div id="container">
  <div id="container_body">
    <div>
      <h3 class="form_title">List of Student</h3>
    </div>
    <div id="form_name">
     <form action="approve.jsp" method="post">
     <div id="errorBox"></div>
     
&nbsp;&nbsp;
Cousre
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;         
         <select name="course">
          <option value="" selected>Select a Course</option>
          <option value="cse">Computer Science & Engineering</option>
          <option value="it">Information Technology</option>
          <option value="ft">Food Technology</option>
          <option value="ece">Electronics & Communication Engineering</option>
          <option value="ee">Electrical Engineering</option>
          <option value="ce">Civil Engineering</option>
          <option value="me">Mechanical Engineering</option>
          <option value="ei">Electronics Instrumentation Engineering</option>
          <option value="bms">Bachelor of Media Science</option>
          <option value="bba">BBA</option>
          <option value="bca">BCA</option>
          <option value="mba">MBA</option>
          <option value="mca">MCA</option>
          <option value="mft">M.Tech in Food Technology</option>
          <option value="mme">M.Tech in VLSI & Micro-Electronics</option>
                
        </select>
         
 <br>
 <br>
 <center><input type="submit" value="SUBMIT" name="submit" id="forsubmit"/></center>    
    <br> 
     <%
        if(aa.equals(curse)){
        	out.println("First Select a Course");
        }
        else
        	{
        	out.println("");
        	}
        if(a.equals(curse)){
        	out.println("Information Technology");
        	%>
        	<p>No of Seats :- <%=x %> </p>
        	<% }

        if(b.equals(curse)){
        	out.println("Computer Science & Engineering");
        	%>
        	<p>No of Seats :- <%=y %></p>
        	<% 
        	}

        if(c.equals(curse)){
        	out.println("Electronics & Communication Engineering");
        	%>
        	<p>No of Seats :- <%=y %></p>
        	<% 	
        }

        if(d.equals(curse)){
        	out.println("Electrical Engineering");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        if(e.equals(curse)){
        	out.println("Electronics Instrumentation Engineering");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        if(f.equals(curse)){
        	out.println("Mechanical Engineering");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        if(g.equals(curse)){
        	out.println("Food Technology");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        if(h.equals(curse)){
        	out.println("Civil Engineering");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        
        if(i.equals(curse)){
        	out.println("Bachelor of Media Science");
        	%>
        	<p>No of Seats :- <%=w %></p>
        	<% 	
        }

        if(j.equals(curse)){
        	out.println("BCA");
        	%>
        	<p>No of Seats :- <%=y %></p>
        	<% 	
        }

        if(k.equals(curse)){
        	out.println("MCA");
        	%>
        	<p>No of Seats :- <%=x %></p>
        	<% 	
        }

        if(l.equals(curse)){
        	out.println("MBA");
        	%>
        	<p>No of Seats :- <%=y %></p>
        	<% 	
        }

        if(m.equals(curse)){
        	out.println("BBA");
        	%>
        	<p>No of Seats :- <%=y %></p>
        	<% 	
        }
        if(n.equals(curse)){
        	out.println("M.Tech in Food Technology");
        	%>
        	<p>No of Seats :- <%=z %></p>
        	<% 	
        }
        if(o.equals(curse)){
        	out.println("M.Tech in VLSI & Micro-Electronics");
        	%>
        	<p>No of Seats :- <%=z %></p>
        	<% 	
        }

 %>  
     
</form>

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
    <td> 
    
    </tr> 
            <% 
    System.out.print("\nabc");
   try{ 
 
       String query1 = "Select * from userdetail where course like '%"+curse+"%' ORDER BY RANK";
       String query = "select count(*) from userdetail where course like '%"+curse+"%'";
       PreparedStatement pst=conn.prepareStatement(query1);
       PreparedStatement pst1=conn.prepareStatement(query); 
       ResultSet rs=pst.executeQuery(query1);
       ResultSet rs1=pst1.executeQuery(query); 
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
    <% System.out.println( );
    
  } rs1.next(); 
  out.println("Total No of Student :- "+rs1.getInt(1)); 
  %>
  </br>
  </br>
</table>
<%
rs.close();
rs1.close();
pst1.close(); 
pst.close();
conn.close();
}catch(Exception q){System.out.print("errror");}
%>
<br>
   <form name = select action="student_list.jsp" method="post">   
 <!--  No of student <input type="text" name="stu" value="2"> -->
  <% String curse1 = request.getParameter("course");
  System.out.println("Course name ="+curse1);
  %>
  <input name="curse1" type="hidden" value="<%=curse1 %>"/>
  No of student <select name="stu">
              <option value="3">3</option>  
              <option value="60">60</option>   
              <option value="120">120</option>
              </select>
  <br>
  <br>
   <center>
   <input type="submit" value="SUBMIT" name="submit" id="forsubmit" />
   </form>
   </center> 
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

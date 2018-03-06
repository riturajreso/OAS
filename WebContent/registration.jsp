<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OAS</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script type="text/javascript" src="slide.js">
</script>
<script type="text/javascript" src="ValidateEmail.js">
</script>
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
<div id="emptyDiv"></div>
<div id="description"></div>
<!--container start-->
<div id="container">
  <div id="container_body">
    <div>
      <h3 class="form_title">User Registration Form</h3>
    </div>
    <div id="form_name">
     <form action="uregtd.jsp" method="post">
     <div id="errorBox"></div>
      <div class="firstnameorlastname">
       NAME
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;
        <input type="text" name="name" placeholder="Enter Your Name"  class="input_name"/>
          </div>
            <div id="email_form">
       EMAIL
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="email"  name="email"  placeholder="Enter Your Email" class="input_email" required/>
      </div>
      <div id="Re_email_form">
       USER NAME
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="text" name="u_id" placeholder="Enter Your User Name" class="input_Re_email"/>
      </div>
     <div id="password_form">
       PASSWORD 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="password" name="pass" placeholder="Enter Password" class="input_password"/>
      </div> 
      <!--birthday details start-->
      <div>
       
      </div>
      <div>BIRTHDAY
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;
       <select name="byr">
          <option value="" selected>Year</option>
          <option value="1990">1990</option>
          <option value="1991">1991</option>
          <option value="1992">1992</option>
          <option value="1993">1993</option>
          <option value="1994">1994</option>
          <option value="1995">1995</option>
          <option value="1990">1996</option>
          <option value="1991">1997</option>
          <option value="1992">1998</option>
          <option value="1993">1999</option>
          <option value="1994">2000</option>
          
        </select>
        &nbsp;&nbsp;
        <select name="bmth" >
          <option value="" selected >Month</option>
          <option value="01">Jan</option>
          <option value="02">Feb</option>
          <option value="03">Mar</option>
          <option value="04">Apr</option>
          <option value="05">May</option>
          <option value="06">Jun</option>
          <option value="07">Jul</option>
          <option value="08">Aug</option>
          <option value="09">Sep</option>
          <option value="10">Oct</option>
          <option value="11">Nov</option>
          <option value="12">Dec</option>
        </select>
        &nbsp;&nbsp;
        <select name="bday" >
          <option value="" selected>Day</option>
          <option value="01">1</option>
          <option value="02">2</option>
          <option value="03">3</option>
          <option value="04">4</option>
          <option value="05">5</option>
          <option value="06">6</option>
          <option value="07">7</option>
          <option value="08">8</option>
          <option value="09">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
          <option value="25">25</option>
          <option value="26">26</option>
          <option value="27">27</option>
          <option value="28">28</option>
          <option value="29">29</option>
          <option value="30">30</option>
          <option value="31">31</option>
        </select>
      </div>
      <!--birthday details ends-->
      <div id="radio_button">
        SEX
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="sex" value="Female"/>
        <label >Female</label>
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="sex" value="Male"/>
        <label >Male</label>
      </div>
      <div id="Re_email_form">
      FATHER NAME
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;
       <input type="text" name="fname" placeholder="Enter Your Father Name" class="input_Re_email"/>
      </div>
       <div id="Re_email_form">
      10th BOARD
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="text" name="btenth" placeholder="Enter Board's Name" class="input_Re_email"/>
      </div>
       <div id="Re_email_form">
      10th PERCENTAGE
       &nbsp;&nbsp;&nbsp;
       <input type="text" name="pertenth" placeholder="Enter Your Percentage" class="input_Re_email"/>
      </div>
      12th BOARD
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="text" name="btwlv" placeholder="Enter Board's Name" class="input_Re_email"/>
      </div>
       <div id="Re_email_form">
      &nbsp;&nbsp;12th PERCENTAGE
       &nbsp;&nbsp;&nbsp;
       <input type="text" name="pertwlv" placeholder="Enter Your Percentage" class="input_Re_email"/>
      </div>
       <div id="Re_email_form">
      &nbsp;&nbsp;JEE RANK
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;
       <input type="text" name="rank" placeholder="Enter Your Rank" class="input_Re_email"/>
      </div>
     <div id ="Re_email_form">
     &nbsp;&nbsp; COURSE
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
       </div> 
       <div align="center">
        <input type="reset" value="RESET" name="reset" id="forsubmit"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="SUBMIT" name="submit" id="forsubmit" onClick="ValidateEmail(document.email)" onClick="warn()"/>
       
      </div>
 <%
    String m=(String)request.getAttribute("msg");
    if(m!=null)
    {
    	%>
    	alert(<font size=2 color="red">"<%=m%>"</font>)
    <%
    }
    %>  
</form>
    </div>
    <!--form ends-->
  </div>
</div>
<!--container ends-->
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
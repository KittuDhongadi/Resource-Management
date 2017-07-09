<%@page import="javax.websocket.SendResult"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet" href="invent1.css">
	<script type="text/javascript">
	function showEndTime(name){
	 	
	    if(name=="1class")
	    {
	    	
	    	var x=document.myForm.sTime.value;
			
			if(x=="08:00 AM") document.myForm.endTTime.value="09:00 AM";
			if(x=="08:30 AM") document.myForm.endTTime.value="09:30 AM";
			if(x=="09:00 AM") document.myForm.endTTime.value="10:00 AM";
			if(x=="09:30 AM") document.myForm.endTTime.value="10:30 AM";
			if(x=="10:00 AM") document.myForm.endTTime.value="11:00 AM";
			if(x=="10:30 AM") document.myForm.endTTime.value="11:30 AM";
			if(x=="11:00 AM") document.myForm.endTTime.value="12:00 PM";
			if(x=="11:30 AM") document.myForm.endTTime.value="12:30 PM";
			if(x=="12:00 PM") document.myForm.endTTime.value="01:00 PM";
			if(x=="12:30 PM") document.myForm.endTTime.value="01:30 PM";
			if(x=="01:00 PM") document.myForm.endTTime.value="02:00 PM";
			if(x=="01:30 PM") document.myForm.endTTime.value="02:30 PM";
			if(x=="02:00 PM") document.myForm.endTTime.value="03:00 PM";
			if(x=="02:30 PM") document.myForm.endTTime.value="03:30 PM";
			if(x=="03:00 PM") document.myForm.endTTime.value="04:00 PM";
			if(x=="03:30 PM") document.myForm.endTTime.value="04:30 PM";
			if(x=="04:00 PM") document.myForm.endTTime.value="05:00 PM";
			if(x=="04:30 PM") document.myForm.endTTime.value="05:30 PM";
			if(x=="05:00 PM") document.myForm.endTTime.value="06:00 PM";
			if(x=="05:30 PM") document.myForm.endTTime.value="06:30 PM";
			if(x=="06:00 PM") document.myForm.endTTime.value="07:00 PM";
	    }
		else if(name=="2lab")
	    {
	    	
	    	var x=document.myForm.sTime.value;
			
			if(x=="08:00 AM") document.myForm.endTTime.value="10:00 AM";
			if(x=="08:30 AM") document.myForm.endTTime.value="10:30 AM";
			if(x=="09:00 AM") document.myForm.endTTime.value="11:00 AM";
			if(x=="09:30 AM") document.myForm.endTTime.value="11:30 AM";
			if(x=="10:00 AM") document.myForm.endTTime.value="12:00 PM";
			if(x=="10:30 AM") document.myForm.endTTime.value="12:30 PM";
			if(x=="11:00 AM") document.myForm.endTTime.value="01:00 PM";
			if(x=="11:30 AM") document.myForm.endTTime.value="01:30 PM";
			if(x=="12:00 PM") document.myForm.endTTime.value="02:00 PM";
			if(x=="12:30 PM") document.myForm.endTTime.value="02:30 PM";
			if(x=="01:00 PM") document.myForm.endTTime.value="03:00 PM";
			if(x=="01:30 PM") document.myForm.endTTime.value="03:30 PM";
			if(x=="02:00 PM") document.myForm.endTTime.value="04:00 PM";
			if(x=="02:30 PM") document.myForm.endTTime.value="04:30 PM";
			if(x=="03:00 PM") document.myForm.endTTime.value="05:00 PM";
			if(x=="03:30 PM") document.myForm.endTTime.value="05:30 PM";
			if(x=="04:00 PM") document.myForm.endTTime.value="06:00 PM";
			if(x=="04:30 PM") document.myForm.endTTime.value="06:30 PM";
			if(x=="05:00 PM") document.myForm.endTTime.value="07:00 PM";
			if(x=="05:30 PM") document.myForm.endTTime.value="07:30 PM";
			if(x=="06:00 PM") document.myForm.endTTime.value="08:00 PM";
	    }
	  }
	</script>
</head>
<body>
	<div id="headerTop" style="width:100%;">
			<div id="logo" style="width:6%;">
				<img src="i.jpeg">
			</div>
			<div id="cname" style="width:30%;">
				<h3>INVENTORY MANAGEMENT SYSTEM</h3>
				<h5>SDM College Of Engineering And Technology,Dhavalgiri,Dharwad</h5>
			</div>
			<div id="menu" style="width:50%;">
				<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="control.jsp">Computer Science</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			</div>
			<div id="regBut">
				<form action="logout.jlc" method="post">
				<input type="submit" style="background-color: lightblue;color:white;padding:0.5%;text-decoration: none;"  value="SignOut" />
				</form>
				<div>
				<font color=blue size=4>Signed In as 
				<%Object obj=session.getAttribute("currentUser"); 
					if(obj!=null){out.print(obj);}%> !!!</font>
				</div>
			</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
	<%
		String itemId=request.getParameter("itemIdS");
		session.setAttribute("itemId", itemId);
	%>
	<div id="bookingForm" style="width:100%; height:auto; padding:1%;">
		<fieldset>
			<legend>Booking form</legend>
			<font color=red size=4 face="arial" style="margin-bottom: 1%;margin-top: 1%;">${MSG}</font>
			<form action="booking.jlc" method="post" name="myForm">
				<input name="ItemId" type="text" style="width:20%; height:35px; padding:0.5%; margin:1%;  background-color: lightgray;" value="<%=session.getAttribute("itemId") %>" placeholder="ItemId" required autofocus readonly/>
				<br><font color=black size=2>Check Item Id</font><br>
				
				<input name="InstId" type="text" style="width:20%; height:35px; padding:0.5%; margin:1%; background-color: lightgray;" placeholder="InstructorId" value="<%=session.getAttribute("currentUser") %>"required autofocus readonly/>
				<br><font color=black size=2>Check Instructor Id</font><br>
				
				<input name="dateAquired" type="date" data-date-inline-picker="true" style="width:20%; height:35px; padding:0.5%; margin:1%;" placeholder="Date" required autofocus/>
				<br><font color=black size=2>Enter start Time</font><br>
				
				<select name="startTime" id="sTime" style="width:21.5%; height:40px; padding:0.5%; margin:1%;">
					<option value="0">Choose Start Time</option>
  					<option value="08:00 AM">08:00 AM</option>
  					<option value="08:30 AM">08:30 AM</option>
  					<option value="09:00 AM">09:00 AM</option>
  					<option value="09:30 AM">09:30 AM</option>
  					<option value="10:00 AM">10:00 AM</option>
  					<option value="10:30 AM">10:30 AM</option>
  					<option value="11:00 AM">11:00 AM</option>
   					<option value="11:30 AM">11:30 AM</option>
  					<option value="12:00 PM">12:00 PM</option>
  					<option value="12:30 PM">12:30 PM</option>
  					<option value="12:30 PM">01:00 PM</option>
  					<option value="01:30 PM">01:30 PM</option>
  					<option value="02:00 PM">02:00 PM</option>
 					<option value="02:30 PM">02:30 PM</option>
    				<option value="03:00 PM">03:00 PM</option>
  					<option value="03:30 PM">03:30 PM</option>
  					<option value="04:00 PM">04:00 PM</option>
  					<option value="04:30 PM">04:30 PM</option>
    				<option value="05:00 PM">05:00 PM</option>
  					<option value="05:30 PM">05:30 PM</option>
  					<option value="06:00 PM">06:00 PM</option>
 				</select><br>
 				<br><font color=black size=2>Choose start time</font><br>
				
				<select name="purpose" style="width:21.5%; height:40px; padding:0.5%; margin:1%;" onchange="showEndTime(this.options[this.selectedIndex].value)" ><option value="0">Choose Purpose</option><option value="1class">CLASS</option><option value="2lab">LAB</option></select>
				<br><font color=black size=2>Choose your purpose for use</font><br>
				
				<input name="endTime" id="endTTime" type="text" style="background-color:lightgray; width:20%; height:35px; padding:0.5%; margin:1%;" placeholder="endTime" required autofocus readonly/>
				<br><font color=black size=2>End Time</font><br>
				<input type="submit" style="width:21.5%; height:35px; padding:0.5%; margin:1%;" value="Book"/>
			</form>
		</fieldset>
	</div>
	</center>

</body>
</html>
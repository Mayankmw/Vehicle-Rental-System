
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Car Rental System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert(' Success..!');</script>
    <%}%>
   
    <div id="logo" class="container">
    <center><h1><font color="red"><i>Car Rental System </i></font></h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li><a href="customerhome.jsp">Home</a></li>
    <li><a href="cviewvehicles.jsp">View Vehicles</a></li>
    <li><a href="creturnvehicles.jsp">Return Vehicles</a></li>
    <li><a href="cviewbill.jsp">View Bill</a></li>
    <li class="current_page_item"><a href="cfeedback.jsp">Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>
    <div id="banner" class="container"> <img src="images/pic01.jpg" width="1200" height="400" alt="" /></div>
    <div id="three-column" class="container">

    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
    
    <%
    String user = session.getAttribute("user").toString();
    
    String query="select vno from bookings where username = '"+user+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(query);
    %>
    <%
    
    %>    

    <p align="justify">
    <center><h2>Give Feedback</h2></center>    
    <form action="cfeedbackact.jsp" method="post" >
    <table align="center" width="371">
    <tr>
    <td height="33"><font color="black">Select Vehicle </td>
    <td width="218"><select name="vno" style="width:170px;" required="">
    <option value="" >--Select--</option>       
      <% 

        while(rs.next())
        {

        String vno = rs.getString("vno");

       %>
     <option value="<%=vno%>" ><%=vno%></option>
    <% }%>
    </select></td>
    </tr>
    <tr>
    <td height="33"><font color="black">Feedback </td>
    <td><textarea name="feedback" rows="3" cols="22" required="" ></textarea></td>
    </tr>
    <tr>
    <td height="13" rowspan="1"></td>
    <td align="left" valign="middle">
    <p>
    <br/>
    <input name="submit" type="submit" value="SUBMIT" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>
    <br/><br/>
    
    </div>

     <div id="copyright" class="container">
    <p> Developed by: <a href="https://skitm.in/"><font color="red">SKITM 3rd YR STUDENTS[GRP 7]</a> </font></p>
    </div>

</body>
</html>

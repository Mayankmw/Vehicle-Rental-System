
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
    <script>alert('Booking Request Accepted..!');</script>
    <%}%>
    
    <div id="logo" class="container">
    <center><h1><font color="red"><i>Car Rental System </i></font></h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="addvehicles.jsp">Add Vehicles</a></li>
    <li><a href="aviewvehicles.jsp">View Vehicles</a></li>
    <li class="current_page_item"><a href="aviewrequests.jsp">View Requests</a></li>
    <li><a href="aviewreturns.jsp">View Returns</a></li>
    <li><a href="aviewfeedback.jsp">View Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>
    <div id="banner" class="container"> <img src="images/pic01.jpg" width="1200" height="400" alt="" /></div>
    <div id="three-column" class="container">

    <%@ include file="connect.jsp" %>    
    <%
   
    try {
        
    String sql1 = "select * from bookings where status = 'Pending' ";
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery(sql1);
    if(rs1.next()){
        
    String sql = "select * from bookings where status = 'Pending' ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);

    %>
    <br/>
    <center>
        <p><font size="5" >View Booking Requests </font></p>
    <style>
        th{
            color: #298bff;
        }
        td{
            text-align: center;
        }
    </style>
     <table border="2" width="80%">

    <tr>
    <th>Customer Name</th>
    <th>Vehicle Type</th>
    <th>Vehicle Name</th>
    <th>Vehicle No</th>
    <th>Capacity</th>
    <th>Cost</th>
    <th>Delete</th>

    </tr>

    <%     while (rs.next()) {
    %>

    <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td><a href="accept.jsp?id=<%=rs.getString(1)%>&cname=<%=rs.getString(2)%>"><button type="button">Accept</button></a></td>
        
    </tr>
    
    <%} }
   
    else{
     out.println("<center><br/><font size='4' color='red'>Sorry..! Nothing to display..!</font></center>");
    
    }
   
   %> 
    
    <%
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
    </center>
    <br/><br/>
    
    </div>

     <div id="copyright" class="container">
    <p> Developed by: <a href="https://skitm.in/"><font color="red">SKITM 3rd YR STUDENTS[GRP 7]</a> </font></p>
    </div>

</body>
</html>

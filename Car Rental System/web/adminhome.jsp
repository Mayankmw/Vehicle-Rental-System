
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
    <script>alert('Login Successful..!');</script>
    <%}%>
    
    <div id="logo" class="container">
    <center><h1><font color="red"><i>Car Rental System </i></font></h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li class="current_page_item"><a href="adminhome.jsp">Home</a></li>
    <li><a href="addvehicles.jsp">Add Vehicles</a></li>
    <li><a href="aviewvehicles.jsp">View Vehicles</a></li>
    <li><a href="aviewrequests.jsp">View Requests</a></li>
    <li><a href="aviewreturns.jsp">View Returns</a></li>
    <li><a href="aviewfeedback.jsp">View Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>
    <div id="banner" class="container"> <img src="images/pic01.jpg" width="1200" height="400" alt="" /></div>
    <div id="three-column" class="container">

    <br/><br/><br/>    
    <center><p><font color="black" size="5">Welcome Admin</font></p></center>
    <br/><br/><br/>
    
    </div>

    <div id="copyright" class="container">
    <p> Developed by: <a href="https://skitm.in/"><font color="red">SKITM 3rd YR STUDENTS[GRP 7]</a> </font></p>
    </div>

</body>
</html>

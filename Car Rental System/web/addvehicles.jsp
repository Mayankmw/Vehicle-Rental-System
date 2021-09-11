
<html xmlns="http://www.w3.org/1999/xhtml"><%-- The namespace to use (for XHTML documents) --%> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><%-- character encoding --%>
<title>Car Rental System</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    
    <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Failed...!');</script>
    <%}%>
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Vehicle Added Successfully..!');</script>
    <%}%>
    
    <div id="logo" class="container">
    <center><h1><font color="red"><i>Car Rental System </i></font></h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li><a href="adminhome.jsp">Home</a></li>
    <li class="current_page_item"><a href="addvehicles.jsp">Add Vehicles</a></li>
    <li><a href="aviewvehicles.jsp">View Vehicles</a></li>
    <li><a href="aviewrequests.jsp">View Requests</a></li>
    <li><a href="aviewreturns.jsp">View Returns</a></li>
    <li><a href="aviewfeedback.jsp">View Feedback</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </ul>
    </div>
    <div id="banner" class="container"> <img src="images/pic01.jpg" width="1200" height="400" alt="" /></div>
    <div id="three-column" class="container">

    <p align="justify">
    <center><p><font color="red" size="5">Add Vehicles</font></p>
    <form name="myform" action="addvehiclesact.jsp" method="post" id="" >
    <table width="371">
    <tr>
    <td height="43"><font color="black">Vehicle Type</td>
    <td><select name="vtype" style="width:170px;" required="">
    <option value="">--Select--</option>
    <option value="CAR">CAR</option>
    </select></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Vehicle Name </td>
    <td width="218"><input name="vname" autocomplete="off" required="" placeholder="Vehicle Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Vehicle No</td>
    <td><input name="vno" autocomplete="off" required="" placeholder="Vehicle No"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Capacity</td>
    <td><input name="capacity" autocomplete="off" required="" placeholder="Capacity"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Cost Per Day</td>
    <td><input name="cost" autocomplete="off" required="" placeholder="Cost Per Day"/></td>
    </tr>    
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><input name="address" autocomplete="off" required="" placeholder="Location"></input></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" type="tel" autocomplete="off" required="" placeholder="Mobile Number" pattern="[0-9]{10}" maxlength="10"/></td>
    </tr>
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="ADD" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </center>
    </p>
    
    </div>

     <div id="copyright" class="container">
    <p> Developed by: <a href="https://skitm.in/"><font color="red">SKITM 3rd YR STUDENTS[GRP 7]</a> </font></p>
    </div>

</body>
</html>

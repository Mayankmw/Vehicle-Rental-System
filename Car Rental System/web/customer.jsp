
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
    if (request.getParameter("m1") != null) {%>
    <script>alert('Login Failed...!');</script>
    <%}%>
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Customer Registered Successfully..!');</script>
    <%}%>
    
    <div id="logo" class="container">
    <center><h1><font color="red"><i>Car Rental System </i></font></h1></center>

    </div>
    <div id="menu" class="container">
    <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="admin.jsp">Admin</a></li>
    <li class="current_page_item"><a href="customer.jsp">Customer</a></li>
    <li><a href="register.jsp">Registration</a></li>
    </ul>
    </div>
    <div id="banner" class="container"> <img src="images/pic01.jpg" width="1200" height="400" alt="" /></div>
    <div id="three-column" class="container">

    <p align="justify">
    <center><p><font color="red" size="5">Customer Login</font></p>
    <form name="myform" action="customeract.jsp" method="post" id="" >
    <table width="321">
    <tr>
    <td height="33"><font color="black">User Name </td>
    <td width="218"><input name="username" autocomplete="off" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="33"><font color="black">Password </td>
    <td width="218"><input type="password" autocomplete="off" name="password" required="" placeholder="Password" /></td>
    </tr>
    
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="LOGIN" />
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

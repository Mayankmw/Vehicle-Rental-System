<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

    <%
    
    String cname = session.getAttribute("user").toString();
    String vtype = request.getParameter("vtype");
    String vname = request.getParameter("vname");
    String vno = request.getParameter("vno"); 
    String capacity = request.getParameter("capacity");
    String cost = request.getParameter("cost");
   // String address = request.getParameter("address");
   // String mobile = request.getParameter("mobile");
    
    String dt=null;
    
    Date dNow = new Date( );
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy/MM/dd");
    dt = ft.format(dNow);
      
    try{
        
    String query = "select * from bookings where vno = '"+vno+"' and username = '"+cname+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(query);
        
    if(rs3.next())
    {     
    
     response.sendRedirect("cviewvehicles.jsp?msgg=Already_Booked");
    }
    
    else{     
      
    PreparedStatement ps=connection.prepareStatement("insert into bookings(username,vtype,vname,vno,capacity,cost,bdt) values(?,?,?,?,?,?,?)");

    ps.setString(1,cname);
    ps.setString(2,vtype);
    ps.setString(3,vname);
    ps.setString(4,vno);
    ps.setString(5,capacity);
    ps.setString(6,cost);
    ps.setString(7,dt);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("cviewvehicles.jsp?msg=Success");
    }
    else{
    response.sendRedirect("cviewvehicles.jsp?m1=Failed");    
    }
    }
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>
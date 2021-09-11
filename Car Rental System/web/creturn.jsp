<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

    <%
    
    String cname = session.getAttribute("user").toString();
    String id = request.getParameter("id");
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
        
      
    PreparedStatement ps=connection.prepareStatement("update bookings set status = 'Returned', rdt = '"+dt+"' where id = '"+id+"'");

    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("creturnvehicles.jsp?msg=Success");
    }
    else{
    response.sendRedirect("creturnvehicles.jsp?m1=Failed");    
    }
    }
    

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>
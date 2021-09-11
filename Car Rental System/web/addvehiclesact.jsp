<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String vtype = request.getParameter("vtype");
    String vname = request.getParameter("vname");
    String vno = request.getParameter("vno"); 
    String capacity = request.getParameter("capacity");
    String cost = request.getParameter("cost");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
      
    try{
      
    PreparedStatement ps=connection.prepareStatement("insert into vehicles(vtype,vname,vno,capacity,cost,address,mobile) values(?,?,?,?,?,?,?)");

    ps.setString(1,vtype);
    ps.setString(2,vname);
    ps.setString(3,vno);
    ps.setString(4,capacity);
    ps.setString(5,cost);
    ps.setString(6,address);
    ps.setString(7,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addvehicles.jsp?msg=Success");
    }
    else{
    response.sendRedirect("addvehicles.jsp?m1=Failed");    
    }
    }
    

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>
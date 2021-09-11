<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


    <%
    
    String id = request.getParameter("id");
    String uname = request.getParameter("uname");
    String bdt = request.getParameter("bdt");
    String rdt = request.getParameter("rdt");
    String cost = request.getParameter("cost");
    int cost1 = Integer.parseInt(cost);
    
    int k = 1;
    try{
        
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy/MM/dd");
     
    Date dateBefore = ft.parse(bdt);
    Date dateAfter = ft.parse(rdt);
    long difference = dateAfter.getTime() - dateBefore.getTime();
    float daysBetween = (difference / (1000*60*60*24));
    System.out.println("aaaaaaaaaaa"+daysBetween);
    int days = Math.round(daysBetween);
    
    int j = days * cost1;
    
    if(j>=1){    
      
    PreparedStatement ps=connection.prepareStatement("update bookings set billamount = "+j+", days="+days+" where id = '"+id+"' and username = '"+uname+"'");

    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("aviewreturns.jsp?msg=Success");
    }
    else{
    response.sendRedirect("aviewreturns.jsp?m1=Failed");    
    }
    }
    
    else{
    
    PreparedStatement ps=connection.prepareStatement("update bookings set billamount = "+cost1+", days="+k+" where id = '"+id+"' and username = '"+uname+"'");

    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("aviewreturns.jsp?msg=Success");
    }
    else{
    response.sendRedirect("aviewreturns.jsp?m1=Failed");    
    }    
        
    }
    
    %>
    
    <%
    }
    catch(Exception e)
    {
            out.println(e.getMessage());
         
    }
 
    %>
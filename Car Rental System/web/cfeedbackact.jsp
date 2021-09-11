<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String user = session.getAttribute("user").toString();
    String vno = request.getParameter("vno");
    String feedback = request.getParameter("feedback");
    
      
    try{
       
    PreparedStatement ps=connection.prepareStatement("insert into feedback(username,vno,feedback) values(?,?,?)");

    ps.setString(1,user);
    ps.setString(2,vno);
    ps.setString(3,feedback);
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("cfeedback.jsp?msg=Success");
    }
    else{
    response.sendRedirect("cfeedback.jsp?m1=Failed");    
    }
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>
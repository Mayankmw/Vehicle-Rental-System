<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      
      String query1="select * from customer where username='"+username+"' and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         String cname = rs.getString("customername");
         session.setAttribute("user",username);
         session.setAttribute("cname",cname);
         response.sendRedirect("customerhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("customer.jsp?m1=Login Failed");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
%>
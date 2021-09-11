<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
  <%

                       
        String id = request.getParameter("id");
        try {

        PreparedStatement ps=connection.prepareStatement("delete from vehicles where id = '"+id+"'");

        ps.executeUpdate();    
                
        response.sendRedirect("aviewvehicles.jsp?msg=Success");

                    } catch (Exception e) {
                           e.printStackTrace();
                       }

                        %>
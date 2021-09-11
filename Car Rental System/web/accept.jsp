<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
  <%

                       
        String id = request.getParameter("id");
        String cname = request.getParameter("cname");
        try {

        PreparedStatement ps=connection.prepareStatement("update bookings set status = 'Booked' where id = '"+id+"' and username = '"+cname+"'");

        ps.executeUpdate();    
                
        response.sendRedirect("aviewrequests.jsp?msg=Success");

                    } catch (Exception e) {
                           e.printStackTrace();
                       }

                        %>
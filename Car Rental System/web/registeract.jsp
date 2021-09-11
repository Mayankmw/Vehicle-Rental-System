<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String cname = request.getParameter("cname");
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String location = request.getParameter("location");
    String mobile = request.getParameter("mobile");
    
      
    try{
        
    String query = "select * from customer where username = '"+username+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(query);
        
    if(rs3.next())
    {     
    
     response.sendRedirect("register.jsp?msgg=Username_Already_Existed");
    }
    
    else{
    
    PreparedStatement ps=connection.prepareStatement("insert into customer(customername,username,password,email,dob,gender,location,mobile) values(?,?,?,?,?,?,?,?)");

    ps.setString(1,cname);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,email);
    ps.setString(5,dob);
    ps.setString(6,gender);
    ps.setString(7,location);
    ps.setString(8,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("customer.jsp?msg=Success");
    }
    else{
    response.sendRedirect("register.jsp?m1=Failed");    
    }
    
    }
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>
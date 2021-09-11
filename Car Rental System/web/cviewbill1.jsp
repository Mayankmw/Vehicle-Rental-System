
<html>
<head>
<title>Print Preview</title>
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/A870EDBB-D679-B741-8E0E-45F1E1576A0B/main.js" charset="UTF-8"></script></head>
<body>
    
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>   

<%

String user = session.getAttribute("user").toString();
String cname = session.getAttribute("cname").toString();
String vno = request.getParameter("vno");

String sql = "select * from bookings where username = '"+user+"' and vno = '"+vno+"'";
Statement st = connection.createStatement();
ResultSet rs = st.executeQuery(sql);
String bdt = null;
String rdt = null;
String cost = null;
int days = 0;
int total = 0;

if(rs.next()){
    
 bdt = rs.getString("bdt");
 rdt = rs.getString("rdt");
 cost = rs.getString("cost");
 days = rs.getInt("days");
 total = rs.getInt("billamount");
    
}

%>    
    

<div style="width: 100%; font-weight: bold;" align="center"> Vehicle Bill Status</div>
<br/>
    <table width="60%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC">
    <tr>
    <td colspan="1" bordercolor="#C7D7F9">
    <div align="center" style="font-weight: bold; font-family: verdana; font-size: 13px;">Vehicle Number : </div>
    </td>
    <td colspan="1" bordercolor="#C7D7F9" style="font-weight: bold; font-family: verdana; font-size: 13px;"><%=vno%></td>
     <td colspan="2" bordercolor="#C7D7F9" class="normaltext">
    <div align="center" style="font-weight: bold; font-family: verdana;font-size: 13px;">Customer Name : </div>
    </td>
    <td colspan="6" bordercolor="#C7D7F9" style="font-weight: bold; font-family: verdana;font-size: 13px;"><%=cname%></td>

    </tr>

    <tr>
    <td height="16" colspan="13" class="style4">

    <div align="center">

    </div>
    </td>
    </tr>

    <tr style="background-color: silver;" >
        
    <th width="208" class="style4">Booking Date</th>
    <th width="163" class="style4">Return Date</th>
    <th width="163" class="style4">Amount per Day</th>
    <th width="163" class="style4">No of Days</th>
    <th width="163" class="style4">Total Amount</th>
    </tr>

    <tr>

    <style>
        td{
            text-align: center;
        }
        
    </style>

    <td width="168" class="style4">
    <div align="center"><%=bdt%></div>
    </td>
    <td class="style4">
    <div align="center"><%=bdt%></div>
    </td>
    <td class="style4">
    <div align="center"><%=cost%></div>
    </td>
    <td class="style4">
    <div align="center"><%=days%></div>
    </td>
    <td class="style4">
    <div align="center"><%=total%></div>
    </td>
    

    </tr>

    
    
    <tr>
    <td height="16" colspan="15" class="style4"></td>
    </tr>

    </table>
    <br/>
    <div style="width:100%; font-size: small;" align="center"> 
            <span style="font-weight: bold;"><i>***** &nbsp&nbsp&nbsp Car Rental System &nbsp&nbsp&nbsp *****</i></span>
    </div>
    <br/>
    <div align="center" style="width: 100%">
        <a href="cviewbill.jsp"><button type="button">Back</button></a>    
        
            <button onclick="javascript:window.print();">Print</button>
    </div>

    </body>
</html>
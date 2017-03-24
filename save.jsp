<%@page contentType="text/html"%>
<%@page language="java" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<html>
<body>
<%String uname=request.getParameter("uname");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String address=request.getParameter("address");
String city=request.getParameter("city");
String pcode=request.getParameter("pcode");
String state=request.getParameter("state");

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("jdbc:odbc:Login");
 PreparedStatement st=con.prepareStatement("Insert into Table values(?,?,?,?,?,?,?)");
 st.setString(1,uname);
 st.setString(2,email);
 st.setString(3,pwd);
 st.setString(4,address);
 st.setString(5,city);
 st.setString(6,pcode);
 st.setString(7,state);
 st.execute();
 
 con.close();
 }
 catch(Exception e)
 {}
 %>
 </body>
 </html>
 
 
 
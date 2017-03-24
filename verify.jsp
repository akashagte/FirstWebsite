<%@ page contentType="text/html"%>
<%@ page language="java"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
String un=request.getParameter("fname");
String pw=request.getParameter("pwd");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"):
Connection con=DriverManager.getConnection("Jdbc:Odbc:Login");
ResultSet rs=null;
Statement st=con.createStatement();
rs=st.executeQuery("Select* from login where uname=' "+un+" 'and pwd=' "+pw);
if(rs!=null)
{
while(rs.next())
{
String name=rs.getString(3);
session.setAttribute("Fname",name);
response.sendRedirect("home.html");
}
}
else
{
String error="Invalid username/password";
response.sendRedirect("login.jsp/error="+error);
}
}
catch(Exception e){}
%>







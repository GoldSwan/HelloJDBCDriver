<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    int i=0;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String sql  = "select * from custom_01";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url,"system","1234");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>custom_01 table search</title>
</head>
<body>

<center>
<h4>[Membership Information]</h4>

<table border="1" cellspacing="1">
	<tr>
    <th>No</th>
    <th>Membership Id</th>
    <th>password</th>
    <th>Membership Name</th>
    <th>email</th>
    <th>phone</th>
	</tr>
<%
while(rs.next()){
%>

<tr>
<td><%= ++i %></td>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
</tr>
<% } %>
</table>
<%
rs.close();
stmt.close();
con.close();
%>
<h4>search successfully!!</h4>
<%
}catch (SQLException e){
%>
<h4>error occured in select.jsp please check!!</h4>
<% } %>
</center>
</body>
</html>
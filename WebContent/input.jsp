<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String p_id = request.getParameter("p_id");
	String p_pw = request.getParameter("p_pw");
	String c_name = request.getParameter("c_name");
	String c_email = request.getParameter("c_email");
	String c_tel = request.getParameter("c_tel");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String sql  = "INSERT INTO custom_01 (p_id, p_pw, c_name, c_email, c_tel) VALUES(?,?,?,?,?)";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url,"system","1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, p_id);
		pstmt.setString(2, p_pw);
		pstmt.setString(3, c_name);
		pstmt.setString(4, c_email);
		pstmt.setString(5, c_tel);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		out.print("<h4>sucessfully insert 1row in custom_01.<h4>");
	}catch(SQLException e){
		out.println("<h4>SQLException occuered in input.jsp. please check.<h4>");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input data</title>
</head>
<body>

</body>
</html>
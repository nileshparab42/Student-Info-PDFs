<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%		
		String pass = "'"+request.getParameter("password")+"'";
		String email = "'"+request.getParameter("email")+"'";
		
    	String url = "jdbc:mysql://localhost:3306/studentinfo";
    	String username="root";
    	String password="Mysql10@#$";
    	String sql = "select * from stdinfo where email="+email;
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection(url,username,password);
    	Statement st= con.createStatement();
    	ResultSet rs =st.executeQuery(sql);
    	rs.next();
    	
%>
<%=rs.getString(7) %>

<%
String passw=request.getParameter("password");%>
<%
if(request.getParameter("password").equals(rs.getString(7))){
response.sendRedirect("http://localhost:8080/StudentInfoPDFs/info.jsp?email="+request.getParameter("email"));
}
else
{
	response.sendRedirect("http://localhost:8080/StudentInfoPDFs?loginfail=true");
} 

%>
</body>
</html>
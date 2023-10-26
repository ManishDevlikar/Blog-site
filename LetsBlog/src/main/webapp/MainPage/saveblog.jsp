<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	  String title = request.getParameter("title");
      String content = request.getParameter("content");
      String author=request.getParameter("author"); 
	  String mobNo=request.getParameter("mobile");
		String fqcn="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306?user=root&password=root5003";
	
	
	try{
		Class.forName(fqcn);
		Connection con = DriverManager.getConnection(url);
				
		PreparedStatement pstmt = con.prepareStatement("INSERT INTO blogusers.blogposts (title, content,author,created_at) VALUES (?, ?, ?, CURRENT_TIMESTAMP)");
		pstmt.setString(1,title);
		pstmt.setString(2, content);
		pstmt.setString(3, author);
		pstmt.executeUpdate();
		
		String dataToSend = mobNo;
		response.sendRedirect("main.jsp?message=" +dataToSend);

		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>

</body>
</html>
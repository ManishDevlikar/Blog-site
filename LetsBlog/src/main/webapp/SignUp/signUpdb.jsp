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
		<%--To insert date into Student Table--%>
		<%
		String firstName=request.getParameter("first");
		String lastName=request.getParameter("last");
		String mobNo=request.getParameter("number");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		String fqcn="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306?user=root&password=root5003";
		
		try{
			Class.forName(fqcn);
			Connection con=DriverManager.getConnection(url);
			
			PreparedStatement pstmtRecords=con.prepareStatement("select * from blogusers.users where mobile_number=?");
			pstmtRecords.setString(1,mobNo);
			ResultSet rs=pstmtRecords.executeQuery();
			if(rs.next()==false){
				
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO blogusers.users (first_name, last_name, mobile_number, email, password, timestamp_column) VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP)");
				pstmt.setString(1,firstName);
				pstmt.setString(2,lastName);
				pstmt.setString(3,mobNo);
				pstmt.setString(4,email);
				pstmt.setString(5,password);
				pstmt.execute();
				response.sendRedirect("../LandingPage/landingpage.jsp");
			}else{
				
			request.getRequestDispatcher("./signup.jsp").forward(request, response);
			}
			

			
		}catch(Exception e){
			e.printStackTrace();
		}
		%>
</body>
</html>
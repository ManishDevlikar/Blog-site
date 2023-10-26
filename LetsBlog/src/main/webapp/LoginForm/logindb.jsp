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
	String mobNo=request.getParameter("loginnumber");
	String password=request.getParameter("loginpass");
	String fqcn="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306?user=root&password=root5003";
	
	try{
		Class.forName(fqcn);
		Connection con=DriverManager.getConnection(url);
		
		PreparedStatement pstmtRecords=con.prepareStatement("select * from blogusers.users where mobile_number=?");
		pstmtRecords.setString(1,mobNo);
		ResultSet rs=pstmtRecords.executeQuery();
		
		if(rs.next()!=false){
			String mob=rs.getString(4);
			String pass=rs.getString(6);
			if(mob.equals(mobNo)&&pass.equals(password)){
				String dataToSend = mob;
				response.sendRedirect("../MainPage/main.jsp?message=" +dataToSend);
			}else{
				request.getRequestDispatcher("./login.jsp").forward(request, response);
			}
		}else{
		request.getRequestDispatcher("./login.jsp").forward(request, response);
		}
		

		
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>
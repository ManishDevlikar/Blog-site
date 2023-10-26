<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
         <%@ page import="java.util.*"%>
    <%@ page import="com.blog.*" %>
     
     <%@ page session="false" %>
     <%
     response.setHeader("Cache-Control", "no-store, private, no-cache, max-age=0");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
     <script
      src="https://kit.fontawesome.com/84d5accb8a.js"crossorigin="anonymous"
    ></script>
    <title>Let'sBlog-HomePage</title>
       <link
      rel="shortcut icon"
      href="../LandingPage/Img/logo-green-small.png"
      type="image/x-icon"
    />
</head>
<body>
	
		<%
	String mobNo=request.getParameter("message");
	String fqcn="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306?user=root&password=root5003";
	String fName = ""; // Initialize fName
	String email = ""; // Initialize email
	String lName="";
	String mob="";
	
	try{
		Class.forName(fqcn);
		Connection con=DriverManager.getConnection(url);
		
		PreparedStatement pstmtRecords=con.prepareStatement("select * from blogusers.users where mobile_number=?");
		pstmtRecords.setString(1,mobNo);
		ResultSet rs=pstmtRecords.executeQuery();
		if(rs.next()!=false){
			
			 fName=rs.getString(2);
			 lName=rs.getString(3);
			 email=rs.getString(5);
			 mob=rs.getString(4);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	 <%
	  List<BlogPost> postList = new ArrayList<BlogPost>();
  
  try{
	  Class.forName(fqcn);
	  Connection con=DriverManager.getConnection(url);
	  
	  PreparedStatement pstmtBlogRecord=con.prepareStatement("select * from blogusers.blogposts");
	  ResultSet rs=pstmtBlogRecord.executeQuery();
	  while (rs.next()) {
		    int postId = rs.getInt("post_id");
		    String title = rs.getString("title");
		    String content = rs.getString("content");
		    String time=rs.getString("created_at");
		    String author=rs.getString("author");
		    BlogPost post = new BlogPost(postId, title, content,time,author);
		    postList.add(post);
		}
  }catch(Exception e){
	  e.printStackTrace();
  }
  %>
	
    <nav id="navbar">
      <div id="navbar-logo-div">
        <a href="#"> <img id="navbar-logo" src="./Img/logo-green-small.png" alt=""></a>
       <div id="search-div">
           <input id="search" type="text" placeholder="Search">
           <i class="fas fa-search"></i>
        </div>
      </div>
      <div id="navbar-links">
        <ul id="navbar-ul">
          <li class="write"><a><i class="far fa-edit"></i><span>Write</span></a></li>
          <!-- <li><a href="#"> Sign In</a></li> -->
          <li class="user"><a><i class="fas fa-user"></i></a></li>
        </ul>
      </div>
    </nav>
    <section id="user-details" class="user-details hide-user-details">
        <div id="user-details-cont">
          <p id="user-info" class="user-info"></p>
          <p><i class="fas fa-user user-profile"></i></p>
            <p id="user-name" class="user-name">Name: <span><%=fName%></span> <span><%=lName %></span></p>
            <p id="user-email" class="user-email">Email Id: <span><%=email %></span></p>
            <p id="user-mob" class="user-mob">Mobile No: <span><%=mob %></span></p>
            <a id="log-out-a"><button id="log-out" class="log-out">Log Out</button></a>
            
        </div>
    </section>

    <section id="create-blog-section" class="create-blog-section hide-blog-section">
      <div id="blog-container" class="blog-container">
        <form id="blog-form" class="blog-form" action="saveblog.jsp" method="post">
          <p class="Close-blog"><i class="far fa-times-circle"></i><span class="close">Close</span></p>
          <h2 class="create-blog">New Blog</h2>
         																		
          <input type="hidden" name="author" value=
          <%=fName%><%=lName %>>
          <input type="hidden" name ="mobile" value=<%=mobNo %>>
          																			
          <input type="text" id="title" class="title" name="title" placeholder="Title" required/>
          <br>
          <textarea rows="60" cols="30" id="content" class="content" name="content" placeholder="Tell Your Story..." required></textarea>
          <br>
          <button class="submit" id="submit">submit</button>
        </form>
      </div>
    </section>
    <section id="blogs-section" class="blogs-section">
    
    <%for(BlogPost post:postList) {%>
    <%if(post!=null) {%>
    
      <div id="blog-container" class="blog-container">
        <div id="blog-details" class="blog-details">
          <h2><%=post.getTitle() %></h2>
          <p>Date: <%=post.getTime() %></p>
          <p>Author: <%=post.getAuthor() %></p>
        </div>

        <div id="blog-content" class="blog-content">
          <p>
            <%=post.getContent() %>
          </p>
        </div>
      </div>
      <% }%>
      <% }%>
    </section>
    <script src="main.js"></script>
</body>
</html>
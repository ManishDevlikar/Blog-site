<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*"%>
    <%@ page import="com.blog.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="landingpage.css">
     <link
      rel="shortcut icon"
      href="../LandingPage/Img/logo-green-small.png"
      type="image/x-icon"
    />
    <script
      src="https://kit.fontawesome.com/84d5accb8a.js"
      crossorigin="anonymous"
    ></script>
    <title>Let's Blog-LandingPage</title>
  </head>
  <body>
  <%
  String fqcn="com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306?user=root&password=root5003";
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
		    // Create a BlogPost object and add it to the list
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
       
        <h1 id="website-name">Let's Blog</h1>
      </div>
      <div id="navbar-links">
        <ul id="navbar-ul">
          <li><a href=""> Our Story</a></li>
          <li><a href="../LoginForm/login.jsp"> Sign In</a></li>
          <li><a href="../SignUp/signup.jsp">Get Started</a></li>
        </ul>
      </div>
      </div>
    </nav>
    <section id="section-hero">
      <div id="section-hero-div">
        <div id="section-hero-left">
          <h2>Stay curious.</h2>
          <p>Discover stories, thinking, and expertise from writers on any topic.</p>
          <a href="../SignUp/signup.jsp"><button id="start-reading-btn">Start Reading</button></a>
        
        </div>
        <div id="section-hero-right">
        </div>
      </div>
    </section>
    <section id="trending-section">
      <div id="trending-section-container">
        <div id="trending-heading-div">
          <i class="fa-regular fa-circle"></i>
          <i class="fa-solid fa-arrow-trend-up"></i>
          <h3>Trending on Let's Blog</h3>
        </div>
        <div id="trending-content-div">
          <%for(int post=1;post<=postList.size(); post++) {%>
          <%if(postList.get(post-1)!=null&&post<=6) {%>
          <div id="trending-article">    
            <p>0<%=post%></p>
            <div id="trending-article-content" class="trending-article-content">
              <div id="trending-article-content-user" class="trending-article-content-user">
                <img src="./Img/1_Isaac Saul.jpg" alt="">
                <a href="#"><%=postList.get(post-1).getAuthor() %></a>
              </div>
              <h2><%=postList.get(post-1).getTitle() %></h2>
              <span><%=postList.get(post-1).getTime() %></span>
            </div>
          </div>  
          <%} %> 
          <%} %>
        </div>
      </div>
    </section>
    <section id="section-main">
      <div></div>
      <div></div>
    </section>
  </body>
</html>
    
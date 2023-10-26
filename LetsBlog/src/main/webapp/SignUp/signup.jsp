<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Let's Blog-SignUp</title>
    <link rel="stylesheet" href="signup.css" />
       <link
      rel="shortcut icon"
      href="../LandingPage/Img/logo-green-small.png"
      type="image/x-icon"
    />
  </head>
  <body>
    <div id="img">
      <img id="logo" src="../LandingPage/Img/logo-white.png" alt="" />
    </div>
    <form action="signUpdb.jsp">
      <div id="sign-in-para">
        <p class="sign-in">Sign Up</p>
      </div>

      <input
        type="text"
        name="first"
        id="first"
        placeholder="FirstName"
        required
      /><br />
      <span id="efirst"></span>
      <input
        type="text"
        name="last"
        id="last"
        placeholder="LastName"
        required
      /><br />
      <span id="elast"></span>
      <input
        type="text"
        name="number"
        id="number"
        placeholder="mobile no"
        required
      /><br />
      <span id="enumber"></span>
      <input
        type="email"
        name="email"
        id="email"
        placeholder="E-mail"
        required
      /><br />
      <span id="eemail"></span>
      <input
        type="password"
        name="pass"
        id="pass"
        placeholder="create password"
        required
      /><br />
      <span id="epass"></span>
      <input
        type="password"
        name=""
        id="cpass"
        placeholder="confirm password"
        required
      /><br />
      <span id="ecpass"></span>
      <button>Sign Up</button>
      <span id="ebut"></span>
      <div id="sign-in-extras">
        <p id="sign-in-extras-conf">Have an account?</p>
        <a id="sign-up-now">Sign in here.</a>
      </div>
      <script src="signup.js"></script>
    </form>
  </body>
</html>
    
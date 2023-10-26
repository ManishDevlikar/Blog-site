<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link
      rel="shortcut icon"
      href="../LandingPage/Img/logo-green-small.png"
      type="image/x-icon"
    />
    <title>Let's Blog-Login</title>
    <link rel="stylesheet" href="login.css" />
  </head>
  <body>
    <div id="img">
      <img id="logo" src="../LandingPage/Img/logo-white.png" alt="" />
    </div>
    <form action="./logindb.jsp">
      <div id="sign-in-para">
        <p class="sign-in">Sign In</p>
      </div>
      <input
        type="text"
        name="loginnumber"
        id="user"
        placeholder="mobile number"
        required
      />
      <br />
      <span id="euser"></span>
      <br />
      <input
        type="password"
        name="loginpass"
        id="pass"
        placeholder="password"
        required
      />
      <br />
      <span id="epass"></span>
      <br />
      <button id="submit"><span id="button-text">Sign In</span></button>
      <br />
      <span id="ebut"></span>
      <br />
      <div id="sign-in-extras">
        <p id="sign-in-extras-conf">New to Let's Blog?</p>
        <a id="sign-up-now">Sign up now.</a>
      </div>
      <div id="page-info">
        <p>
          This page is protected by Google reCAPTCHA to ensure you're not a bot.
          <span>Learn more.</span>
        </p>
      </div>
    </form>
    <script src="login.js"></script>
  </body>
</html>
    
let form = document.querySelector("form");
let user = document.querySelector("#user");
let pass = document.querySelector("#pass");
let button = document.querySelector("#submit");
let euser = document.querySelector("#euser");
let epass = document.querySelector("#epass");
let ebut = document.querySelector("#ebut");
/*  
let storage = JSON.parse(localStorage.getItem("data"));
*/
let flag = true;
let logo = document.querySelector("#logo");
let signUpNow = document.querySelector("#sign-up-now");

button.addEventListener("click", (valid) => {
  euser.innerHTML = "";
  epass.innerHTML = "";
  ebut.innerHTML = "";
  if (user.value == "" && pass.value == "") {
    euser.innerHTML = "username is Required";
    epass.innerHTML = "Password is Required";
    valid.preventDefault();
    flag = false;
  } else if (user.value == "") {
    euser.innerHTML = "username is Required";
    valid.preventDefault();
    flag = false;
  } else if (pass.value == "") {
    epass.innerHTML = "password is Required";
    valid.preventDefault();
    flag = false;
  }

 /* for (let index = 0; index < storage.length; index++) {
    if (
      user.value == storage[index].number &&
      pass.value == storage[index].pass
    ) {
      flag = false;
    }
  }
  if (flag) {
    ebut.innerHTML = "invalid detalis";
    valid.preventDefault();
  }
  */
});

logo.addEventListener("click", () => {
  location.href = "../LandingPage/landingpage.jsp";
});

signUpNow.addEventListener("click", () => {
  location.href = "../SignUp/signup.jsp";
});

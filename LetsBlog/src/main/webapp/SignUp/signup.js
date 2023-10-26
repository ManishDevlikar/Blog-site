let form = document.querySelector("form");
let first = document.querySelector("#first");
let efirst = document.querySelector("#efirst");
let last = document.querySelector("#last");
let elast = document.querySelector("#elast");
let number = document.querySelector("#number");
let enumber = document.querySelector("#enumber");
let email = document.querySelector("#email");
let eemail = document.querySelector("#eemail");
let pass = document.querySelector("#pass");
let epass = document.querySelector("#epass");
let cpass = document.querySelector("#cpass");
let ecpass = document.querySelector("#ecpass");
let button = document.querySelector("button");
let ebutton = document.querySelector("ebut");
let logo = document.querySelector("#logo");
let flag = true;
/*
let store = [];
let local = JSON.parse(localStorage.getItem("data"));
if (local) {
  store = local;
}
*/
let signUpNow = document.querySelector("#sign-up-now");


button.addEventListener("click", (valid) => {
  let regx = /^[a-zA-Z]{2,10}$/;
  let regx1 = /^[6-9][0-9]{9}$/;
  let regx2 = /^[a-zA-Z0-9!@#]{6,15}$/;
  if (first.value == "") {
    efirst.innerHTML = "first name require </br>";
    flag = false;
  } else if (regx.test(first.value)) {
    efirst.innerHTML = "";
  } else {
    efirst.innerHTML = "invalid first name </br>";
    flag = false;
  }
  // for last
  if (last.value == "") {
    elast.innerHTML = "last name require </br>";
    flag = false; //
  } else if (regx.test(last.value)) {
    elast.innerHTML = "";
    console.log(last.value);
  } else {
    elast.innerHTML = "invalid last name </br>";
    flag = false;
  }

  if (number.value == "") {
    enumber.innerHTML = "mobile number is requred";
    flag = false;
  } else if (regx1.test(number.value)) {
    enumber.innerHTML = "";
  } else {
    enumber.innerHTML = "mobile number is invalid";
    flag = false;
  }
  if (email.value == "") {
    eemail.innerHTML = "email is require";
    flag = false;
  } else {
    eemail.innerHTML = "";
  }
  if (pass.value == "") {
    epass.innerHTML = "password is required";
    flag = false;
  } else if (regx2.test(pass.value)) {
    epass.innerHTML = "";
  } else {
    epass.innerHTML = "invalid password";
    flag = false;
  }

  if (cpass.value == pass.value) {
    ecpass.innerHTML = "";
  } else {
    ecpass.innerHTML = "password not matching";
    flag = false;
  }
/*  if (flag) {
    let ref = {
      first: first.value,
      last: last.value,
      number: number.value,
      email: email.value,
      pass: pass.value,
    };
    store.push(ref);
    localStorage.setItem("data", JSON.stringify(store));
  } else {
    valid.preventDefault();
  }
  */
});

logo.addEventListener("click", () => {
  location.href = "../LandingPage/landingpage.jsp";
});
 

signUpNow.addEventListener("click", () => {
  location.href = "../LoginForm/login.jsp";
});

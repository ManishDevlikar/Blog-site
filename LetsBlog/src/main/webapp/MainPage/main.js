// ---------------user profile------------------------
const profile = document.querySelector(".fas.fa-user");
const userDetails = document.querySelector(".user-details");
const user = document.querySelector(".user");
const logOut= document.querySelector("#log-out-a");

// ------------------blogs----------------------------

const blogsSection = document.querySelector(".blogs-section");
const blogContainer = document.querySelector(".blog-container");

// ---------------Create Blog------------------------
const writeIcon = document.querySelector(".write");
const createBlogSection = document.querySelector(".create-blog-section");
const closeIcon = document.querySelector(".far.fa-times-circle");
const closeLi = document.querySelector(".close");

// ------------------hide/unhide user details---------------

user.addEventListener("click", () => {
  userDetails.classList.toggle("hide-user-details");
});

// ---------------hide/unhide text Area----------------------
writeIcon.addEventListener("click", () => {
  createBlogSection.classList.remove("hide-blog-section");
    blogsSection.classList.add("hide-blog-section");
      blogContainer.classList.add("hide-border");
      
});
closeLi.addEventListener("click", () => {
  createBlogSection.classList.add("hide-blog-section");
   blogsSection.classList.remove("hide-blog-section");
     blogContainer.classList.remove("hide-border");
 
});

logOut.addEventListener("click",()=>{
            logOut.href = "../LandingPage/landingpage.jsp";
            history.replaceState({}, '', '../LandingPage/landingpage.jsp');
            window.close();
     
})


window.addEventListener("beforeunload", function(event) {
    history.replaceState({}, '', '../LandingPage/landingpage.jsp');
});

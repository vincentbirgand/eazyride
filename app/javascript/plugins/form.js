

// form-choice


const formClick = () => {
  // const formElement = document.getElementsByClassName('form-choice');
  const formElement = document.querySelectorAll('.form-choice');
  if (formElement) {
    console.log(formElement);
    // je mets un event listener sur le form
    formElement.forEach((element) => {
      element.addEventListener("click", (event) => {
        console.log("event", event);
        event.currentTarget.classList.toggle("active");
      });
    });


    // quand on clique sur un element je toggle la classe active
  }
};

export { formClick };

// $(document).ready(function(){
//   $(".form-choice").click(function(){
//     $(this).toggleClass("active");
//   });
// });

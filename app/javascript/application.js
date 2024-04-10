// import $ from 'jquery';
// import "@hotwired/turbo-rails";
// import "controllers";

// turboでflashメッセージの非表示を行えるため、コメントアウト
// $(function() {
//   $('.flash-message').fadeOut(4000);
// });

// JavaScriptで非表示にする場合（仮）
// document.addEventListener("turbo:load", function() {
//   const flashMessage = document.getElementsByClassName("flash-message");
//   console.log(flashMessage);

//   if(flashMessage){
//     setTimeout(function() {
//       flashMessage.classList.add("hide");
//       // もしくは
//       // flashMessage.style.display = "none";
//     }, 4000);
//   }
// });
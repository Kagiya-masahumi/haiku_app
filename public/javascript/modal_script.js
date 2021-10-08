
$(function() {

// $("#signup-open").hide();
// $("#login-open").hide();

  // ログインのクリックイベント

  $('#login-show').on("click",function() {
    $('.login-modal-wrapper').fadeIn();
  });
  
  // 新規登録のクリックイベント
  $('.signup-show').on("click",function(){
    $('.signup-modal-wrapper').fadeIn();
  });


  // 閉じるボタンのクリックイベント
  $('.close-modal').on("click",(function(){
    $('.login-modal-wrapper').fadeOut();
    $('.signup-modal-wrapper').fadeOut();
  }));
  
});





// const signUpOpen = document.getElementById('signup-open');
// // // // // const loginOpen = document.getElementById('login-modal');

// const signUpModal = document.getElementById('signup-modal');
// // // // // const logInModal = document.getElementById('login-modal');

// const buttonClose = document.getElementsByClassName('close-modal')[0];

// //『しんきとうろく』がクリックされた時
// signUpOpen.addEventListener('click', signUpModal);
// console.log("クリックされました")
// function signUpModal() {
//   modal.style.display = 'block';
// };

// // // // //『ろぐいん』がクリックされた時
// // // // // logInOpen.addEventListener('click', logInModal);
// // // // // function logInModal() {
// // // // //   modal.style.display = 'block';
// // // // // };

// //バツ印がクリックされた時
// buttonClose.addEventListener('click', modalClose);
// console.log("クリックされました")
// function modalClose() {
//   modal.style.display = 'none';
// };


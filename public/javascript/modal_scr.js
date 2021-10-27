


$(function() {
  // ログインのクリックイベント

  $('#login-show').on("click",function() {
    console.log("OK")
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


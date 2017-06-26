$(function(){
  var isWelcomePage = $('.welcome-page').length > 0;

  if (isWelcomePage) {
    $('body').css('overflow','hidden');
  }
});
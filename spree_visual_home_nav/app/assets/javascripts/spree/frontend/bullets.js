$(document).ready(function() {
  $('.bullet').mouseenter(function(event){
    $(this).toggleClass('undeployed')
    $(this).children('.plus').hide()
    $(this).children('.title').show()
  });

  $('.bullet').mouseleave(function(event){
    $(this).toggleClass('undeployed')
    $(this).children('.plus').show()
    $(this).children('.title').hide()
  });
});

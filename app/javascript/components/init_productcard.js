import $ from 'jquery';


const initPcard = () => {
  $('.buy').click(function(){
  $('.bottom').addClass("clicked");
});

$('.remove').click(function(){
  $('.bottom').removeClass("clicked");
});
};

export { initPcard};

function zoomIn(){
  var getAllImages = document.getElementsByClassName('detail-img');
    for (var i = 0; i < getAllImages.length; i++) {
  (function(x) {
    getAllImages[x].addEventListener('click', function() {
      let src = this.getAttribute('src')
      let modal = document.getElementById('myModal');
      let modalImg = document.getElementById("zoomImg");
      modal.style.display = "block";
      modalImg.src = src;
    })
  }(i))
}
}

function zoomOut() {
  let modal = document.getElementById('myModal');
  let img = document.getElementById('detail-image');
  let modalImg = document.getElementById("zoomImg");
  zoomImg.className += " out";
  setTimeout(function() {
     modal.style.display = "none";
     zoomImg.className = "pic-content";
   }, 400);
  
}

$(document).ready(function(){
//Navigation bar script
  $('.sandwitch').click(function(){
    $('.navbar').toggleClass('open');
    $(this).toggleClass('open');
  });

  setTimeout(function(){
    $('.loader-bg').fadeToggle();
  },2000);
})


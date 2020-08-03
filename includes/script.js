var allLocations = [];

function getLocations() {
  var store = document.getElementsByClassName("store");
  var storeCity = document.getElementsByClassName("storeCity");
  var storeName = document.getElementsByClassName("storeName");
  var storePhone = document.getElementsByClassName("storePhone");
  var storeTime1 = document.getElementsByClassName("storeTime1");
  var storeTime2 = document.getElementsByClassName("storeTime2");
  var storeTime3 = document.getElementsByClassName("storeTime3");
  var latitude = document.getElementsByClassName("latitude");
  var longtitude = document.getElementsByClassName("longtitude");
  for (var i = 0; i < store.length; i++) {
    storeCity[i].style.display = "none";
    if ( storePhone[i].innerHTML == "-" ) { storePhone[i].style.display = "none"; }
    if ( storeTime1[i].innerHTML == "-" ) { storeTime1[i].style.display = "none"; }
    if ( storeTime2[i].innerHTML == "-" ) { storeTime2[i].style.display = "none"; }
    if ( storeTime3[i].innerHTML == "-" ) { storeTime3[i].style.display = "none"; }
    latitude[i].style.display = "none";
    longtitude[i].style.display = "none";
    allLocations.push([
      storeName[i].innerHTML,
      latitude[i].innerHTML,
      longtitude[i].innerHTML,
      i+1,
      storeCity[i].innerHTML,
      storePhone[i].innerHTML,
      storeTime1[i].innerHTML,
      storeTime2[i].innerHTML,
      storeTime3[i].innerHTML
    ])
  }
  autoLoadMap();
}

function autoLoadMap() {
  var lat = 55.169438;
  var lng = 23.881275;
  var zoomCenter = 7;
  myMap(lat, lng, zoomCenter);
}

function myMap(lat, lng, zoomCenter) {

  var mapProp= {
    center: new google.maps.LatLng(lat, lng),
    zoom: zoomCenter,
     mapTypeControl: false,
     streetViewControl: false,
     scaleControl: false,
     fullscreenControl: false,
     zoomControl: false,
  };

  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

  var infowindow = new google.maps.InfoWindow();

  for (i = 0; i < allLocations.length; i++) {
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(allLocations[i][1], allLocations[i][2]),
      map: map
    });

    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infowindow.setContent(allLocations[i][0]+'<br>' + allLocations[i][5]+'<br>'+allLocations[i][6]+'<br>'+allLocations[i][7]+'<br>'+allLocations[i][8]);
        infowindow.open(map, marker);
      }
    })(marker, i));
  }
}

function filterCities(city) {
  var store = document.getElementsByClassName("store");
  var storeCity = document.getElementsByClassName("storeCity");
  for (var i = 0; i < store.length; i++) {
    if ( storeCity[i].innerHTML != city ) { store[i].style.display = "none"; }
    if ( storeCity[i].innerHTML == city ) { store[i].style.display = "table"; }
  }
  document.getElementsByClassName("dropdownCitiesBtn")[0].innerHTML = city;
  document.getElementsByClassName("cities")[0].style.display = "none";
}

function displayFilter(){
  if (document.getElementsByClassName("cities")[0].style.display === "none") {
    document.getElementsByClassName("cities")[0].style.display = "block";
  }
  else if (document.getElementsByClassName("cities")[0].style.display == "block"){
    document.getElementsByClassName("cities")[0].style.display = "none";
  }
}

(function showPhotosOnOpen(){
  var visiblePhotosQuantity = 12;
  var photos = document.getElementsByClassName("column");
  var photosQ = photos.length;
  for (var i = 0; i < photosQ; i++){
    if (i >= visiblePhotosQuantity){
      document.getElementsByClassName("column")[i].style.display="none";
    }
  }
})();

function showMore(){
  var showMoreOnClick = 6;
  var photos = document.getElementsByClassName("column");
  var photosQ = photos.length;
  var visiblePhotos = 0;
  for (var i = 0; i < photosQ; i++){
    if (document.getElementsByClassName("column")[i].style.display != "none") {
      visiblePhotos++;
    }
  }
  for (var i = visiblePhotos; i < visiblePhotos+showMoreOnClick; i++){
    document.getElementsByClassName("column")[i].style.display = "unset";
    document.getElementsByClassName("column")[i].classList.add("photoAppear")
  }
  if ( visiblePhotos+showMoreOnClick == photosQ ){
    document.getElementsByClassName("showMore")[0].style.display = "none";
  }
}

function sendEmail(){
  var name = document.getElementById('name').value;
  var email = document.getElementById('email').value;
  var tel = document.getElementById('tel').value;
  var text = document.getElementById('text').value;
  var mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  if ( name!="" && email.match(mailFormat) && tel!="" && text!="" ){
    let postData = {
      api: 'sendEmail',
      name: name,
      email: email,
      tel: tel,
      text: text
    };
    fetch('includes/api.php', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json;charset=utf-8'
      },
      body: JSON.stringify(postData)
    });
    document.getElementsByClassName("sendEmailForm")[0].style.display = "none";
    document.getElementsByClassName("contactForm")[0].innerHTML = "Užklausa pagal forma buvo išsiųsta...";
  }
  else {
    document.getElementsByClassName("formSubmitError")[0].innerHTML = "Ne viskas užpildyta... Užpildykite trūkstamus langelius ir spauskite Siųsti.";
  }
}

$(document).ready(function(){
  $("a").on('click', function(event) {
    if (this.hash !== "") {
      event.preventDefault();
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
        window.location.hash = hash;
      });
    }
  });
});

$(window).scroll(function() {
  var scrollDistance = $(window).scrollTop();
  $('.container').each(function(i) {
      if ($(this).position().top <= scrollDistance+200) {
          $('.menuItem').removeClass('menuItemActive');
          $('.menuItem').eq(i).addClass('menuItemActive');
      }
  });
}).scroll();

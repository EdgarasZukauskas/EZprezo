<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel='icon' href='includes/images/favicon.ico' type='image/x-icon'/ >
    <title>PREZO – kepyklėlė, į kurią norisi sugrįžti</title>
    <link rel="stylesheet" href="includes/style.css">
  </head>
  <body>
    <div class="menu">
      <img class="logo" src="includes/images/logo.png"></img>
      <a class="menuItem" href="#start">Pradžia</a>
      <a class="menuItem" href="#assortment">Asortimentas</a>
      <a class="menuItem" href="#whereToFind">Kur rasti?</a>
      <a class="menuItem" href="#contacts">Kontaktai</a>
      <div class="socialItem">
        <a href="https://www.facebook.com/prezo.lt/"><img class="socialIconMenu" src="includes/images/facebook.png"></img></a>
        <a href="https://www.instagram.com/prezokepyklele/"><img class="socialIconMenu" src="includes/images/instagram.png"></img></a>
      </div>
    </div>
    <div class="page">
      <div id="start" class="aboutUs container">
          <img class="logoImg" src="includes/images/logo.png"></img>
          <div class="aboutUsText">
            Kviečiame užsukti ir padovanoti sau keletą skanių akimirkų!
          </div>
      </div>

      <div id="assortment" class="assortment container">
        <div class="row">
          <?php $page -> printPastries() ?>
        </div>
        <div class="showMore" onclick="showMore()">Rodyti daugiau...</div>
      </div>

      <div id="whereToFind" class="whereToFind container">
        <div class="map">
          <div id="googleMap" class="googleMap"></div>
        </div>
        <div class="addresses">
          <div class="dropdownCities">
            <button class="dropdownCitiesBtn" onclick="displayFilter()">Pasirinkite miestą...</button>
            <div class="cities">
              <?php $page -> printCities() ?>
            </div>
          </div>
          <div class="storeList">
            <?php $page -> printBranches() ?>
          </div>
        </div>
      </div>

      <div id="contacts" class="contacts container">
        <div class="contactForm">
          <div class="sendEmailForm">
            <input type="text" id="name" name="name" class="formInput" placeholder="Vardas...">
            <input type="email" id="email" name="email" class="formInput" placeholder="El. paštas...">
            <input type="tel" id="tel" name="tel" class="formInput" placeholder="Telefono numeris...">
            <textarea type="text" id="text" name="text" class="formInput" cols="40" rows="5" placeholder="Jūsų tekstas..."></textarea>
            <div class="formSubmit" onclick="sendEmail()">Siųsti</div>
            <div class="formSubmitError"></div>
          </div>
        </div>
        <div class="contactDetails">
          <div class="contactInfoEmail"><a href="mailto:info@prezo.lt">info@prezo.lt</a></div>
          <div class="contactEmails">Direktorius:<br> <a href="mailto:vaidas@prezo.lt">vaidas@prezo.lt</a></div>
          <div class="contactEmails">Marketingas:<br> <a href="mailto:rinkodara@prezo.lt">rinkodara@prezo.lt</a></div>
          <div class="contactSocialIcons">
            <a href="https://www.facebook.com/prezo.lt/"><img class="socialIconContacts" src="includes/images/facebook.png"></img></a>
            <a href="https://www.instagram.com/prezokepyklele/"><img class="socialIconContacts" src="includes/images/instagram.png"></img></a>
          </div>
        </div>
      </div>
    </div>
    <script src="includes/script.js"></script>
    <script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgTHdUHI-Qh3HbyVQHLaCHtr1dII2LAw4&callback=getLocations"></script>
  </body>
</html>

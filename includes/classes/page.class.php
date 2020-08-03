<?php

  class page extends db {

    public function displayMainPage($page){
      include_once('includes/pages/main.page.php');
    }

    public function printCities(){
      $miestai = $this -> connect() -> query("SELECT * FROM " . $this->miestaiTable . " WHERE rodomas = 1");
      for ( $i = 0 ; $i < mysqli_num_rows($miestai) ; $i++ ){
        $miestas = mysqli_fetch_assoc($miestai);
        echo
          '<div class="city" onclick="
            filterCities(&#39;'.
              $miestas['pavadinimas'].
            '&#39;);
            myMap('.
              $miestas['latitude'].
              ', '.
              $miestas['longtitude'].
              ', '.
              $miestas['zoom'].
            ')
          ">'.
            $miestas['pavadinimas'].
          '</div>';
      }
    }

    public function printBranches(){
      $padaliniai = $this -> connect() -> query("SELECT * FROM " . $this->padaliniaiTable . " WHERE rodomas = 1");
      for ( $i = 0 ; $i < mysqli_num_rows($padaliniai) ; $i++ ){
        $padalinys = mysqli_fetch_assoc($padaliniai);
        echo '<a href="#googleMap"><div class="store" onclick="myMap('.$padalinys['latitude'].', '.$padalinys['longtitude'].', 15)">';
          echo '<div class="storeCity">'.$padalinys['miestas'].'</div>';
          echo '<div class="storeName">'.$padalinys['adresas'].'</div>';
          echo '<div class="storePhone">Tel. '.$padalinys['telefonoNumeris'].'</div>';
          echo '<div class="storeTime1">'.$padalinys['darboLaikas1'].'</div>';
          echo '<div class="storeTime2">'.$padalinys['darboLaikas2'].'</div>';
          echo '<div class="storeTime3">'.$padalinys['darboLaikas3'].'</div>';
          echo '<div class="latitude">'.$padalinys['latitude'].'</div>';
          echo '<div class="longtitude">'.$padalinys['longtitude'].'</div>';
        echo '</div></a>';
      }
    }

    public function printPastries(){
      $gaminiai = $this -> connect() -> query("SELECT * FROM " . $this->gaminiaiTable . " WHERE rodomas = 1");
      for ( $i = 0 ; $i < mysqli_num_rows($gaminiai) ; $i++ ){
        $gaminys = mysqli_fetch_assoc($gaminiai);
        echo '<div class="column">';
          echo '<img src="includes/images/assortment/'.$gaminys['nuotraukosId'].'" class="assortmentPhoto">';
          echo '<div class="overlay">';
            echo '<div class="imageText"><b>'.$gaminys['pavadinimas'].'</b><br>'.$gaminys['aprasymas'].'</div>';
          echo '</div>';
        echo '</div>';
      }
    }

  }

?>

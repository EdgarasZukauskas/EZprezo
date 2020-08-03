<?php
  class communication {
    public function sendEmail($data){

      $headers  = "From: prezo.lt < no-reply@prezo.lt >\n" . 'X-Mailer: PHP/' . phpversion() . "X-Priority: 1\n" . "MIME-Version: 1.0\r\n" . "Content-Type: text/html; charset=UTF-8\n";
      $subject = "Nauja užklausa iš ". $data["name"];

      $txt = '
          Puslapyje buvo išsiųsta užklausa:<br>'.
          $data["text"].'<br><br>

          Siuntė: '.$data["name"].'<br>
          Email: '.$data["email"].'<br>
          Tel.nr: '.$data["tel"];

      mail('edgaras.zukauskas@outlook.com',$subject,$txt,$headers);
    }
  }
?>

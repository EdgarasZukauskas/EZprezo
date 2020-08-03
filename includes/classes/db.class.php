<?php
  class db {

    private $servername = 'localhost';
    private $username = 'XXXXXX';
    private $password = 'XXXXXX';
    private $dbName = 'developit_prezo';
    protected $gaminiaiTable = 'gaminiai';
    protected $miestaiTable = 'miestai';
    protected $padaliniaiTable = 'padaliniai';

    protected function connect() {
      $connect = new mysqli($this->servername, $this->username, $this->password, $this->dbName);
      mysqli_set_charset($connect, "utf8");
      return $connect;
    }
  }
?>

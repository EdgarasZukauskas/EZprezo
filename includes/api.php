<?php

spl_autoload_register( function($className) {
  include_once 'classes/'.$className.'.class.php';
});

$data = json_decode(file_get_contents('php://input'), true);

if (array_key_exists('api', $data)){

  switch ($data['api']) {

    case 'sendEmail':
      $communication = new communication;
      $communication -> sendEmail($data);
      break;

    }
  }

?>

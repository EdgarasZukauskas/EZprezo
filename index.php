<?php
  spl_autoload_register( function($className) {
    include_once 'includes/classes/'.$className.'.class.php';
  });

  $page = new page;
  $page -> displayMainPage($page);
?>

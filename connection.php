<?php

     try {
        $connect = new PDO('mysql:host=localhost;dbname=enroll','root','');

       
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      } 
      catch(PDOException $e) 
      {
        echo "Connection failed: " . $e->getMessage();
      }
?>
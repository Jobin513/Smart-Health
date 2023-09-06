<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Connection</title>
  </head>
  <body>
    
    <p><?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $db_name = "smarthealth";

      //create connection
      $conn = new mysqli($servername, $username, $password, $db_name);

      //check connection, if failed then give error message
      if ($conn->connect_error) {
        die("<p style='color:red'>" . "Connection Failed" . $conn->connect_error . "</p>");
      }

  

      ?></p>
  </body>
</html>

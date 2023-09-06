<?php
    session_start();
    include('connectdb.php');
    $username = $_POST["user"];
    $password = $_POST["passwd"];
    $emailAdd = $_POST["Email"];

    $sql="INSERT INTO users(username,password,Email)
    VALUES('$username','$password','$emailAdd')";


    if($conn->query($sql)){
        $_SESSION['username'] = $username;
        echo '<p style="font-size:24pt;color:black;text-align:center">'."Account registration is successful! Please sign in".'<p>';

        $url = "http://localhost/Smart-Health/Smart-Health-System-Website/SHS/login/index.html";

        echo "<meta http-equiv='Refresh' content='3;URL=$url'>";
        exit();

    }else{

        echo '<p style="font-size:24pt;color:black;text-align:center">'."There was an error! Please resubmit.".'<p>';


        $url = "index.html";

        echo "<meta http-equiv='Refresh' content='3;URL=$url1'>";


    }

        $conn->close();
?>
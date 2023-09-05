<?php
    include('connectdb.php');
    $username = $_POST["user"];
    $password = $_POST["passwd"];
    $emailAdd = $_POST["Email"];

    $sql="INSERT INTO users(username,password,Email)
    VALUES('$username','$password','$emailAdd')";


    if($conn->query($sql)){

        echo '<p style="font-size:24pt;color:black;text-align:center">'."Account registration is successful! Jumping to Health assistant online chatroom...".'<p>';

        $url = "https://healthonlinechatroom.herokuapp.com/";

        echo "<meta http-equiv='Refresh' content='3;URL=$url'>";

    }else{

        echo '<p style="font-size:24pt;color:black;text-align:center">'."There was an error! Please resubmit.".'<p>';


        $url = "index.html";

        echo "<meta http-equiv='Refresh' content='3;URL=$url1'>";


    }

        $conn->close();
?>
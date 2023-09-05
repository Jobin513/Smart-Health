<?php
    include('connectdb.php');
    $username = $_POST['u'];
    $password = $_POST['p'];


        $sql = "SELECT * FROM users WHERE (username = '$username') AND (password = '$password') limit 1";

        $result = $conn->query($sql);

        $row = mysqli_fetch_assoc($result);


        if($row > 0){
            header("location:https://healthonlinechatroom.herokuapp.com/");
        }
        else{
            $url = "index.html";

            echo "<script>alert('Login failed. Invalid username or password.')</script>";

            echo "<meta http-equiv='Refresh' content='0;URL=$url'>";


        }



        $conn->close();
?>

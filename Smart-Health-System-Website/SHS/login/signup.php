<?php
$showAlert = false;
$showError = false;
$exists = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //Include file which makes the
    //database connection.
    include 'connectdb.php';

    $username = $_POST["username"];
    $password = $_POST["password"];
    $cpassword = $_POST["cpassword"];
    $emailAdd = $_POST["Email"];

    $sql = "SELECT * FROM users where username = '$username'";
    
    $result = mysqli_query($conn, $sql);

    $num = mysqli_num_rows($result);

    //This sql query is used to check if the
    //username is already present or
    //not in our database
    if ($num == 0) {
        if(($password == $cpassword) && $exists == false) {

            $hash = password_hash ($password, PASSWORD_DEFAULT);

            //password hashing is used here
            $sql = "INSERT INTO users(username, password, Email) VALUES ('$username', '$hash', '$emailAdd)";

            if ($result) {
                $showAlert = true;
            }
        } else {
            $showError = "Passwords do not match";
        }
    }// end

    if ($num > 0) {
        $exists = "Username not available";
    }
}
?>
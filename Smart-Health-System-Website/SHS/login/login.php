<?php
session_set_cookie_params([
    'domain' => 'localhost',
    'path' => '/',
    'secure' => false,
    'httponly' => false,
    'samesite' => 'Lax',  
]);

session_start();
include('connectdb.php');
$username = $_POST['u'];
$password = $_POST['p'];

$sql = "SELECT * FROM users WHERE (username = '$username') AND (password = '$password') limit 1";
$result = $conn->query($sql);

if($result->num_rows == 1){
    $row = mysqli_fetch_assoc($result);
    $_SESSION['username'] = $row['username']; 
    echo "Username from database: " . $row['username'];
    $username = $row['username'];
    header("location:http://localhost:2019/index.html?username=".$username);
    exit();
}
else{
    $url = "index.html";

    echo "<script>alert('Login failed. Invalid username or password.')</script>";

    echo "<meta http-equiv='Refresh' content='0;URL=$url'>";
}

$conn->close();
?>

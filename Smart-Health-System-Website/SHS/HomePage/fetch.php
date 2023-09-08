<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "smarthealth";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT symptom_name FROM symptoms";
$result = $conn->query($sql);

$symptoms = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $symptoms[] = $row['symptom_name'];
    }
}

$conn->close();
header('Content-Type: application/json');

echo json_encode($symptoms);
?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "smarthealth";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch symptoms
$sql = "SELECT symptom_name FROM symptoms";
$result = $conn->query($sql);

// Create an array to store symptom data
$symptoms = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $symptoms[] = $row['symptom_name'];
    }
}

// Close the database connection
$conn->close();

// Set the content type to JSON
header('Content-Type: application/json');

// Output the symptom data as JSON
echo json_encode($symptoms);
?>

<?php
file_put_contents('diagnosis_log.txt', print_r($_POST, true));
$servername = "localhost";
$username = "root";
$password = "";
$database = "smarthealth";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$selectedSymptomName = $_POST['symptoms']; 
$gender = $_POST['gender'];

if ($gender === 'Female') {
    $sql = "SELECT i.issue_name, ROUND(si.accuracy, 2) AS accuracy 
            FROM symptoms_issues si
            JOIN issues i ON si.issue_id = i.id
            JOIN symptoms s ON si.symptom_id = s.id
            WHERE s.symptom_name = '$selectedSymptomName'";
} else if ($gender === 'Male') {
    $sql = "SELECT i.issue_name, ROUND(si.accuracy, 2) AS accuracy 
            FROM symptoms_issues si
            JOIN issues i ON si.issue_id = i.id
            JOIN symptoms s ON si.symptom_id = s.id
            WHERE s.symptom_name = '$selectedSymptomName' AND si.gender = 'Male'";
}

$result = $conn->query($sql);
$response = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $response[] = $row;
    }
}
$conn->close();

header('Content-Type: application/json');
echo json_encode($response);
?>
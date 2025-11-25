<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "chantikdb";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
  http_response_code(500);
  echo "Database connection failed";
  exit;
}

$data = json_decode(file_get_contents("php://input"), true);
$question = $conn->real_escape_string($data['question']);
$answer   = $conn->real_escape_string($data['answer']);
$username = $conn->real_escape_string($data['username']); 

$sql = "INSERT INTO chatlogs (question, answer, username) VALUES ('$question', '$answer', '$username')";
if ($conn->query($sql) === TRUE) {
  echo json_encode(["status" => "success"]);
} else {
  http_response_code(500);
  echo json_encode(["status" => "error", "message" => $conn->error]);
}

$conn->close();
?>

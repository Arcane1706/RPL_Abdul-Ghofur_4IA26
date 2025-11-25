<?php
ini_set("display_errors", 0); 
header("Content-Type: application/json");

$data = json_decode(file_get_contents("php://input"), true);
$username = $data["username"] ?? null;

if (!$username) {
  echo json_encode(["status" => "error", "message" => "Username is required"]);
  exit;
}

require_once "db.php"; 

$sql = "DELETE FROM chatlogs WHERE username = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);

if ($stmt->execute()) {
  echo json_encode(["status" => "success"]);
} else {
  echo json_encode(["status" => "error", "message" => $stmt->error]);
}
?>

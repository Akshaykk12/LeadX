<?php
header('Content-Type: application/json');
include 'connection.php';

if ($conn->connect_error) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection failed: ' . $conn->connect_error]);
    exit();
}

// Retrieve POST data and validate it
$name = isset($_POST['name']) ? trim($_POST['name']) : null;
$age = isset($_POST['age']) ? trim($_POST['age']) : null;
$gender = isset($_POST['gender']) ? trim($_POST['gender']) : null;
$occupation = isset($_POST['occupation']) ? trim($_POST['occupation']) : null;
$marital_status = isset($_POST['marital_status']) ? trim($_POST['marital_status']) : null;

// Validate required fields
if (empty($name) || empty($age) || empty($gender) || empty($occupation) || empty($marital_status)) {
    echo json_encode(['status' => 'error', 'message' => 'Missing required fields']);
    exit();
}

// Insert personal details into the database
$sql = "INSERT INTO customer (name, age, gender, occupation, marital_status) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sisss', $name, $age, $gender, $occupation, $marital_status);

if ($stmt->execute()) {
    $aid = $conn->insert_id;  // Assuming aid is auto-incremented
    echo json_encode(['status' => 'success', 'message' => 'Personal details saved successfully', 'aid' => $aid]);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed to save personal details']);
}

$stmt->close();
$conn->close();
?>

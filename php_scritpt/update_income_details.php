<?php
header('Content-Type: application/json');
include 'connection.php';

if ($conn->connect_error) {
    echo json_encode(['status' => 'error', 'message' => 'Database connection failed: ' . $conn->connect_error]);
    exit();
}

$income = isset($_POST['income']) ? $_POST['income'] : '';
$credit_score = isset($_POST['credit_score']) ? $_POST['credit_score'] : '';
$aid = isset($_POST['aid']) ? $_POST['aid'] : '';

if (empty($income) || empty($credit_score) || empty($aid)) {
    echo json_encode(['status' => 'error', 'message' => 'Missing required fields']);
    exit();
}

// Insert or update the record
$sql = "INSERT INTO customer (income, credit_score, aid) VALUES (?, ?, ?)
        ON DUPLICATE KEY UPDATE income = VALUES(income), credit_score = VALUES(credit_score)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sii', $income, $credit_score, $aid);

if ($stmt->execute()) {
    echo json_encode(['status' => 'success', 'message' => 'Income details saved successfully']);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed to save income details: ' . $stmt->error]);
}

$stmt->close();
$conn->close();

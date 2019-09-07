<?php
$servername = "mysql-mariadb-4-101.zap-hosting.com";
$username = "zap336127-2";
$password = "j5nLsGCu8HaYcvhD";
$dbname = "zap336127-2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * from";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 
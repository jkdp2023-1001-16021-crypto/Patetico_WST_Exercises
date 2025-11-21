<?php 
$conn = mysqli_connect ("localhost", "root", "", "class_db");
$res = mysqli_query($conn, "SELECT * FROM students");

$sql = "SELECT * FROM students";
$result = $conn->query($sql);

$servername = "localhost";
$username = "root";
$password = "";
$database = "class_db";

$conn = mysqli_connect ($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - First Name: " . $row["first_name"] . " - Last Name: ". $row["last_name"] .   " - Email: ". $row["email"] ." - Age: ". $row["age"] . "</br>";
    }
} else {
    echo "No results found.";
}

$conn->close();

if (($count = mysqli_num_rows($res)) > 0) { 
    echo "Has rows: $count";
} else {
    echo "No rows found.";
}
?>
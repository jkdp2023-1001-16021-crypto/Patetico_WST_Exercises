<?php 
$conn = mysqli_connect ("localhost", "root", "", "class_db");
$res = mysqli_query($conn, "SELECT * FROM students");

$sql = "SELECT * FROM students";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)){
        echo "ID: " . $row["id"] . " - First Name: " . $row["first_name"] . " - Last Name: ". $row["last_name"] .   " - Email: ". $row["email"] ." - Age: ". $row["age"] . "</br>";
    }
    echo "Has rows: " . mysqli_num_rows($res);
} else {
    echo "No results found.";
}
mysqli_close($conn);
?>
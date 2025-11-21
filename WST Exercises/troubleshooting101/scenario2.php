//SCENARIO 2: Missing quotes in SQL when using POST

<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $fname = $_POST['fname'] ?? "Ana";
    $sql = "SELECT * FROM students WHERE first_name = '" . mysqli_real_escape_string($conn, $fname) . "'";
    $res = mysqli_query($conn, $sql);

    while ($row = mysqli_fetch_assoc($res)) {
        echo $row['first_name'] ." ". $row['last_name'] ."<br>";
    }
?>
<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $age = $_GET['age'] ?? 0;

    $stmt = mysqli_prepare($conn, "SELECT * FROM students WHERE age = ?");
    mysqli_stmt_bind_param($stmt,"i", $age);
    
    mysqli_stmt_execute($stmt);
    $res = mysqli_stmt_get_result( $stmt );

    while ($row = mysqli_fetch_assoc($res)) {
        echo $row['first_name'] . " - Age: " . $row['age'] . "<br>";
    }
?>
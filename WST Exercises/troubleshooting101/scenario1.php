<?php
    $conn = mysqli_connect("localhost", "root", "", "class_db");
    
    $id = $_GET['student_id'] ?? 0;

    $sql = "SELECT * FROM students WHERE student_id = " . intval(3);
    $res = mysqli_query($conn, $sql);

    $r = mysqli_fetch_assoc($res);
    
    echo $r['first_name'] ?? "No student found.";
    echo " ";
    echo $r['last_name'] ?? "No student found.";
?>
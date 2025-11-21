<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $id = intval($_GET['student_id'] ?? 0);

    $stmt = mysqli_prepare($conn, "DELETE FROM students WHERE student_id = ? " );
    
    mysqli_stmt_bind_param($stmt,"i", $id);
    mysqli_stmt_execute( $stmt );

    echo "Row Deleted!";
?>
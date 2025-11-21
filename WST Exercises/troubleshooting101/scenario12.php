<?php   
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $student_id = intval($_GET['student_id'] ?? 0);
    
    $sql = "SELECT * FROM students WHERE student_id = '$student_id'";
    $res = mysqli_query($conn, $sql);

    $row = mysqli_fetch_assoc($res);

    if ($row) {
        echo "ID: " . $row['student_id'] . "<br>";
        echo "First Name: " . $row['first_name'] . "<br>";
        echo "Last Name: " . $row['last_name'] . "<br>";
        echo "Email: " . $row['email'] . "<br>";
    } else {
        echo "Student not found.";
    }
?>
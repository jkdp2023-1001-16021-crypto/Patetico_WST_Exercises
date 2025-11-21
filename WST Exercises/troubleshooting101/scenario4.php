<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    $first = $_POST['fname'] ?? "";
    $last = $_POST['lname'] ?? "";

    if ($first !== "" && $last !== "") {
        $first_safe = mysqli_real_escape_string($conn, $first);
        $last_safe = mysqli_real_escape_string($conn, $last);

        $sql = "INSERT INTO students (first_name, last_name) VALUES ('$first_safe', '$last_safe')";
        mysqli_query($conn, $sql);

        echo "Inserted!";
    }
    
    else {
        echo "Oops! Try Again! First and Last Name must not be empty.";
    }
?>
<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $email = $_POST['email'] ?? "";
    $sql = "SELECT * FROM students WHERE email='$email'";
    $res = mysqli_query($conn, $sql);
?>
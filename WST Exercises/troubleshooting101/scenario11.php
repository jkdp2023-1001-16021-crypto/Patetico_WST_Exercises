<?php   
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $email = $_GET['email'] ?? "";
    echo "You entered: " . htmlspecialchars($email);
?>
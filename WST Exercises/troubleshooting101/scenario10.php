<?php
    $conn = mysqli_connect("localhost","root","","class_db");

    $age = $_POST['age'];
    $sql = "SELECT * FROM students WHERE age = $age";
?>
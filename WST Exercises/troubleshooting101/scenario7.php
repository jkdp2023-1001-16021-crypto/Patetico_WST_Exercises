<?php
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $student_id = $_POST['student_id'] ?? 0;
    $email = $_POST['email'] ?? "";

    if ($student_id > 0 && $email !== "") {
        $email_safe = mysqli_real_escape_string($conn, $email);

        $sql = "UPDATE students SET email='$email_safe' WHERE student_id=%id";
        $res = mysqli_query($conn, $sql);

        if ($res) {
            echo "Updated!";
        } else {
            echo "Error, could not update email." . mysqli_error($conn);
        }
    } else {
        echo " Error, ID and email must not be empty.";
    }
?>
<?php   
    $conn = mysqli_connect("localhost","root","","class_db");
    
    $student_id = intval($_POST['id'] ?? 0);
    $newEmail = trim($_POST['email'] ?? "");

    if ($student_id > 0 && $newEmail !== "") {
        $newEmailSafe = mysqli_real_escape_string($conn, $newEmail);

        $sql = "UPDATE students SET email='$newEmailSafe' WHERE student_id=$student_id";
        $res = mysqli_query($conn, $sql);

        if ($res) {
            echo "Email updated for student with the ID number $student_id";
        }
        else {
            echo "Error: " . mysqli_error($conn);
        }
    }
    else {
        echo "Inputs must not be empty. Try Again.";
    }
?>
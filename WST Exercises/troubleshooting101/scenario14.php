<?php   
    $conn = mysqli_connect("localhost","root","","class_db");

    $first = $_POST["first_name"] ?? "";
    $last = $_POST["last_name"] ?? "";
    $email = $_POST["email"] ?? "";

    if ($first !== "" && $last !== "" && $email !== "") {
        $first_n = mysqli_real_escape_string($conn, $first);
        $last_n = mysqli_real_escape_string($conn, $last);
        $email_n = mysqli_real_escape_string($conn, $email);

        $sql = "INSERT INTO srudents (first_name, last_name, email) VALUES ('first_n', 'last_n', 'email_n')";

        if (mysqli_query($conn, $sql)) {
            echo "Student added successfully!";
        }
        else {
            echo "Error " . mysqli_error($conn);
        }
    }
    else {
        echo "All fields must be filled. Try Again.";
    }
?>
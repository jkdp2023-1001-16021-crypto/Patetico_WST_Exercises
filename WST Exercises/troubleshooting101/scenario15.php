<?php   
    $conn = mysqli_connect("localhost","root","","class_db");

    $page = max(0, intval($_GET['page'] ?? 0 ));
    $limit = 5;
    $offset = $page * $limit;
    $res = mysqli_query($conn, "SELECT * FROM students LIMIT $offset, $limit");

    while ($row = mysqli_fetch_assoc($res)) {
        echo $row['student_id'] . " - " . $row['first_name'] . " " . $row['last_name'] . " " . $row['email'] . "<br>";
    }
?>
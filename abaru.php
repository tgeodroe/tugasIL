<?php
session_start(); // Start session

// Establish database connection (You need to provide your database credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_masuk2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve student ID from the form submission
$student_id = $_POST['nisn'];

// Get the current date
$current_date = date("Y-m-d");

// Query tb_siswa to retrieve student's name and class based on the provided ID
$sql = "SELECT nama_siswa, kelas FROM tb_siswa WHERE nisn = '$student_id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // If a matching record is found, fetch the data
    $row = $result->fetch_assoc();
    $student_name = $row['nama_siswa'];
    $student_class = $row['kelas'];

    // Check if the NISN has already been submitted today
    $check_sql = "SELECT * FROM tb_menampilkan WHERE nisn = '$student_id' AND DATE(waktu_kehadiran) = '$current_date'";
    $check_result = $conn->query($check_sql);

    if ($check_result->num_rows > 0) {
        // If the NISN has already been submitted today, set the session message and redirect
        $_SESSION['nisn_already_submitted'] = "NISN sudah dimasukkan";
        header("Location: beranda.php");
        exit(); // Make sure to exit after redirection
    } else {
        // Insert data into tb_menampilkan if NISN has not been submitted today
        $insert_sql = "INSERT INTO tb_menampilkan (nisn, nama, kelas) VALUES ('$student_id', '$student_name', '$student_class')";
        if ($conn->query($insert_sql) === TRUE) {
            header("Location: beranda.php");
            exit();
        } else {
            echo "Error: " . $insert_sql . "<br>" . $conn->error;
        }
    }
} else {
    // If no matching record is found, set the notification message in the session
    $_SESSION['nisn_not_found'] = "NISN tidak ditemukan";
    // Redirect back to beranda.php
    header("Location: beranda.php");
    exit();
}

// Close database connection
$conn->close();
?>

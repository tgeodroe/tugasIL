<?php
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

// Query tb_siswa to retrieve student's name and class based on the provided ID
$sql = "SELECT nama_siswa, kelas FROM tb_siswa WHERE nisn = '$student_id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // If a matching record is found, insert into tb_menampilkan
    $row = $result->fetch_assoc();
    $student_name = $row['nama_siswa']; // Corrected variable name
    $student_class = $row['kelas']; // Fetch the 'kelas' column

    // Insert data into tb_menampilkan
    $insert_sql = "INSERT INTO tb_menampilkan (nisn, nama, kelas) VALUES ('$student_id', '$student_name', '$student_class')";
    if ($conn->query($insert_sql) === TRUE) {
        header("Location: beranda.php");
    } else {
        echo "Error: " . $insert_sql . "<br>" . $conn->error;
    }
} else {
    header("Location: beranda.php");
}

// Close database connection
$conn->close();
?>

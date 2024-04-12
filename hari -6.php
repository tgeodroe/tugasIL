<?php
session_start(); // Mulai sesi

// Periksa apakah pengguna sudah login
if (!isset($_SESSION['username'])) {
    // Pengguna belum login, arahkan ke halaman login
    header("Location: masuk.html");
    exit(); // Pastikan untuk keluar agar kode di bawahnya tidak dieksekusi setelah pengalihan header
}

// Pengguna sudah login, dapatkan nama pengguna dari sesi
$username = $_SESSION['username'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Absensi Siswa</title>
    <link rel="stylesheet" type="text/css" href="stail.css">

</head>
<body>
<span class="container">
        <a href="beranda.php"><img src="srvm.png" alt=""></a>
        <h1>Data Kehadiran 6 Hari Lalu</h1>

    <span class="menu-icon" onclick="toggleMenu()">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </span>
          
          <span id="menu" class="menu">
            <center>
            <!-- Your menu items go here -->
            <a href="beranda.php" class="button">Beranda</a>
            <a href="history.php" class="button">history</a>
            <a href="siswa.php" class="button">Daftar</a>
            <a href="graphcui.php" class="button">Grafik</a>
            <a href="credits.html" class="button">Credits</a>
            <form action="logout2.php">
            <button id="logoutButton" class="butt">Logout</button>
            </form>
        </center>
      </span>
      </span>
    <center>

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
$today_date = date("Y-m-d", strtotime("-6 day"));

// Variable to store total number of all students
$totalAllStudents = 0;

// Function to fetch student names, remove duplicates, and display in table
function displayStudentNames($conn, $today_date, $class) {
    global $totalAllStudents; // Access the global variable

    // Query tb_menampilkan to retrieve student names for the specified class
    $sql = "SELECT nama FROM tb_menampilkan WHERE DATE(waktu_kehadiran) = '$today_date' AND kelas = '$class'";
    $result = $conn->query($sql);

    // Check if there are any records for the specified class
    if ($result->num_rows > 0) {
        // Create an array to store unique names for the specified class
        $uniqueNames = array();

        echo "<table border='1'>";
        echo "<tr><th>$class</th></tr>";
        // Output data of each row for the specified class
        while($row = $result->fetch_assoc()) {
            $name = $row["nama"];
            // Check if the name is not already in the array for the specified class
            if (!in_array($name, $uniqueNames)) {
                // Display the name in the table row for the specified class
                echo "<tr><td>" . $name . "</td></tr>";
                // Add the name to the array to prevent duplicates for the specified class
                $uniqueNames[] = $name;
            }
        }
        echo "</table>";
        // Count the total number of unique students for the specified class
        $total_students = count($uniqueNames);
        echo "<p>Total Siswa Masuk Di Kelas $class: $total_students</p>";
        // Add the total number of students for the specified class to the global variable
        $totalAllStudents += $total_students;
    } else {
        echo "Tidak Ada Yang Masuk Di Kelas $class.". "<br>";
    }
}

// Call the function for each class
displayStudentNames($conn, $today_date, 'X A');
displayStudentNames($conn, $today_date, 'X B');
displayStudentNames($conn, $today_date, 'X C');
displayStudentNames($conn, $today_date, 'XI A');
displayStudentNames($conn, $today_date, 'XI B');
displayStudentNames($conn, $today_date, 'XI C');
displayStudentNames($conn, $today_date, 'XII MIA 1');
displayStudentNames($conn, $today_date, 'XII MIA 2');

// Display the total number of all students above the table
echo "<p class='haiyaa'>Total Siswa Masuk: $totalAllStudents</p>";

// Close database connection
$conn->close();
?>

</center>
<script src="script.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="stail.css">
</head>
<body>
<span class="container">
        <a href="beranda.php"><img src="srvm.png" alt=""></a>
        <h1>Daftar Siswa SMA Kathedos</h1>

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

    function displayStudentNames($conn, $class) {
        global $totalAllStudents; // Access the global variable
    
        // Query tb_menampilkan to retrieve student names for the specified class
        $sql = "SELECT nama_siswa, nisn FROM tb_siswa WHERE kelas = '$class'";
        $result = $conn->query($sql);
    
        // Check if there are any records for the specified class
        if ($result->num_rows > 0) {
            // Create an array to store unique names for the specified class
            $uniqueNames = array();
    
            echo "<table border='1'>";
            echo "<tr><th>$class</th><th>NISN</th></tr>";
            // Output data of each row for the specified class
            while($row = $result->fetch_assoc()) {
                $name = $row["nama_siswa"];
                $nisn = $row["nisn"]; // Add missing semicolon here
                // Check if the name is not already in the array for the specified class
                if (!in_array($name, $uniqueNames)) {
                    // Display the name in the table row for the specified class
                    echo "<tr><td>" . $name . "</td><td>" . $nisn . "</td></tr>";
                    // Add the name to the array to prevent duplicates for the specified class
                    $uniqueNames[] = $name;
                }
            }
            echo "</table>";
            // Count the total number of unique students for the specified class
            $total_students = count($uniqueNames);
            echo "<p>Total Siswa Kelas $class: $total_students</p>";
            // Add the total number of students for the specified class to the global variable
            $totalAllStudents += $total_students;
        } else {
            echo "Tidak Ada Siswa Di Kelas $class." . "<br>";
        }
    }
    
    // Call the function for each class
    displayStudentNames($conn, 'X A');
    displayStudentNames($conn, 'X B');
    displayStudentNames($conn, 'X C');
    displayStudentNames($conn, 'XI A');
    displayStudentNames($conn, 'XI B');
    displayStudentNames($conn, 'XI C');
    displayStudentNames($conn, 'XII MIA 1');
    displayStudentNames($conn, 'XII MIA 2');
    

    echo "<p class='haiyaa'>Total Siswa: $totalAllStudents</p>";
    

    $conn->close();
    ?>
    <br>
    </center>
    <script src="script.js"></script>
</body>
</html>
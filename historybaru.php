<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Absensi Siswa</title>
    <link rel="stylesheet" href="stail.css">
    <link href='https://fonts.googleapis.com/css?family=Gruppo' rel='stylesheet'>
  <style>
    .butto{
    background-color: #4caf50;
    border: none;
    border-radius: 3px;
    padding: 4px;
    color: white;
}
  </style>
</head>
<body>
<span class="container">
        <a href="beranda.php"><img src="srvm.png" alt=""></a>
        <h1>History Kehadiran Siswa SMA Kathedos</h1>

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
      <form method="post">
            <label for="days_ago">Jumlah siswa</label>
            <input type="number" id="days_ago" name="days_ago" min="0" placeholder="masukan angka" required>
            <label for="">hari yang lalu</label>
            <input type="submit" value="Submit" class="butto">
        </form>
        
        
        <?php
        // Start the session and check if user is logged in
        session_start();
        if (!isset($_SESSION['username'])) {
            header("Location: login.html");
            exit();
        }

        // Database connection variables
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

        // Calculate the date based on the number of days ago specified by the user
        $days_ago = isset($_POST['days_ago']) ? (int)$_POST['days_ago'] : 1;
        $date = date("Y-m-d", strtotime("-$days_ago days"));

        // Total number of all students
        $totalAllStudents = 0;

        // Function to fetch and display student names for a given class and date
        function displayStudentNames($conn, $date, $class) {
            global $totalAllStudents;

            $sql = "SELECT nama FROM tb_menampilkan WHERE DATE(waktu_kehadiran) = '$date' AND kelas = '$class'";
            $result = $conn->query($sql);

            // Display student names in a table
            echo "<table border='1'>";
            echo "<tr><th>Class: $class</th></tr>";
            $uniqueNames = [];
            while ($row = $result->fetch_assoc()) {
                $name = $row["nama"];
                if (!in_array($name, $uniqueNames)) {
                    echo "<tr><td>$name</td></tr>";
                    $uniqueNames[] = $name;
                }
            }
            echo "</table>";

            // Calculate total students for the class
            $totalStudents = count($uniqueNames);
            echo "<p>Total Students in Class $class: $totalStudents</p>";
            $totalAllStudents += $totalStudents;
        }

        // Display attendance data for each class
        $classes = ['X A', 'X B', 'X C', 'XI A', 'XI B', 'XI C', 'XII MIA 1', 'XII MIA 2'];
        foreach ($classes as $class) {
            displayStudentNames($conn, $date, $class);
        }

        // Display total students in all classes
        echo "<p>Total Students Present: $totalAllStudents</p>";

        // Close connection
        $conn->close();
        ?>
        </center>
    </div>
</body>
</html>

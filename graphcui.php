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

// Initialize an empty array to store the dates
$dates = array();

// Generate dates for the last 30 days and add them to the $dates array
for ($i = 0; $i < 30; $i++) {
    $dates[] = date("Y-m-d", strtotime("-$i day"));
}

// Variable to store total number of all students
$totals = array_fill(0, count($dates), 0);

// Function to fetch and count total students for a given date and class
function countTotalStudents($conn, $date, $class) {
    // Query tb_menampilkan to retrieve student names for the specified class on the given date
    $sql = "SELECT COUNT(DISTINCT nama) AS total_students FROM tb_menampilkan WHERE DATE(waktu_kehadiran) = '$date' AND kelas = '$class'";
    $result = $conn->query($sql);

    // Check if there are any records for the specified class and date
    if ($result->num_rows > 0) {
        // Fetch the total number of students
        $row = $result->fetch_assoc();
        return $row["total_students"];
    } else {
        return 0;
    }
}

// Iterate over each date and class
foreach ($dates as $i => $date) {
    $classes = array('X A', 'X B', 'X C', 'XI A', 'XI B', 'XI C', 'XII MIA 1', 'XII MIA 2');
    foreach ($classes as $class) {
        $totals[$i] += countTotalStudents($conn, $date, $class);
    }
}

// Close database connection
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Line Chart Example</title>
    <script src="https://cdn.anychart.com/releases/8.11.0/js/anychart-base.min.js"></script>
    <link rel="stylesheet" type="text/css" href="stail.css">
    <style type="text/css">
        html, body, #contain {
            width: 100%; height: 100%; margin: 0; padding: 0;
        }
        
    </style>
</head>
<body>
<span class="container">
        <a href="beranda.php"><img src="srvm.png" alt=""></a>
        <h1>Grafik Kehadiran Siswa SMA Kathedos</h1>

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
  

<div id="contain"></div>


<script>
    function toggleMenu() {
            var menu = document.getElementById("menu");
            var menuIcon = document.querySelector(".menu-icon");

            // Toggle the active class on the menu and the menu icon
            menu.classList.toggle("active");
            menuIcon.classList.toggle("active");
        }
    anychart.onDocumentReady(function () {
    // Define variables representing the total number of students for each date
    var data = [
        <?php foreach ($dates as $date) : ?>
            ["<?php echo $date; ?>", <?php echo $totals[array_search($date, $dates)]; ?>],
        <?php endforeach; ?>
    ];

    // Create a data set
    var dataSet = anychart.data.set(data);

    // Map the data for all series
    var firstSeriesData = dataSet.mapAs({x: 0, value: 1});

    // Create a line chart
    var chart = anychart.line();

    // Create the series and name them
    var firstSeries = chart.line(firstSeriesData);
    firstSeries.name("Total Siswa Hadir");

    // Set line color
    firstSeries.stroke("#0059b3"); // Change the color to your desired color

    // Add a legend
    var legend = chart.legend().enabled(true);
    legend.fontColor("#000000"); // Change legend text color

    // Add a title
    chart.title("Grafik Kehadiran Siswa 30 Hari Terakhir");
    chart.title().fontColor("#000000"); // Change title text color

    // Set axis labels font color
    chart.xAxis().labels().fontColor("#000000");
    chart.yAxis().labels().fontColor("#000000");

    // Specify where to display the chart
    chart.container("contain");
    chart.background().fill({
        src: "prnt.png",
        
    });

    // Draw the resulting chart
    chart.draw();
});

</script>
<br>
</body>
</html>

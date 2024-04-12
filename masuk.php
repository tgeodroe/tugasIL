<?php
session_start(); // Mulai sesi

// Pengguna sudah login, dapatkan nama pengguna dari sesi
if(isset($_SESSION['username'])) {
    header("location: beranda.php");
    exit();
}

// Koneksi ke database
$host = "localhost";
$dbUsername = "root";
$dbPassword = "";
$database = "db_masuk2";

$conn = new mysqli($host, $dbUsername, $dbPassword, $database);

if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

// Ambil data dari form login
if(isset($_POST['username']) && isset($_POST['password'])) {
    $user = $_POST['username'];
    $pass = $_POST['password'];

    // Lindungi dari serangan SQL injection
    $user = $conn->real_escape_string($user);

    // Query untuk mencari user di database
    $query = "SELECT * FROM tb_datadata WHERE nama_pengguna='$user'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // User ditemukan, periksa password
        $row = $result->fetch_assoc();
        if ($pass = $row['kata_sandi']) {
            // Lakukan sesuatu setelah login berhasil
            $_SESSION['username'] = $user;

            // Redirect ke beranda.php
            header("location: beranda.php");
            exit();
        } else {
            echo "Password salah!";
        }
    } else {
        echo "Username tidak ditemukan!";
    }
}

// Tutup koneksi ke database
$conn->close();
?>
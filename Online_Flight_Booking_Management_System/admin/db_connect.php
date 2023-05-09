<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flight_booking_db";

try {
  $conn = new mysqli($servername, $username, $password, $dbname);
  echo "Connected successfully";
} catch (mysqli_sql_exception $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>

<?php
$sever = "localhost";
$username = "root";
$password = "";
$database = "bedevelovebug";
// Create connection
$conn = new mysqli($sever, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
require 'function.php';
?>
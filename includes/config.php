<?php
ob_start(); //wanneer php page laad alles sturen naar server op zijn tijd

session_start(); //sessie starten

$timezone = date_default_timezone_set("Europe/Amsterdam");

$con = mysqli_connect("localhost","root","","Poizer");

if (mysqli_connect_errno()) {
    echo "Failed to connect to db: " . mysqli_connect_errno();
}

?>
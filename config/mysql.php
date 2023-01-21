<?php
    require_once 'variables.php';
    session_start();
    
    $con = new mysqli(MYSQL_SERVER, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DB);
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }
<?php
    include_once '../config/autoload.php';

    if (!isset($_POST['submit'])) {
        die("Error");
    }

    $u_name = $_POST['name'];
    $u_pas = $_POST['pas'];

    $sql_select =  "SELECT name, pas FROM user WHERE name='".$u_name."' and pas='".$u_pas."'";
    $result = $con -> query($sql_select);
    $row = $result -> fetch_object();

        if ($result = $row > 0){
            $_SESSION['name'] = $u_name;
            header('Location: home.php');
        } else{
            echo "Falscher Benutzername oder Passwort";
        }

    $con->close();
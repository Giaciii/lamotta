<?php
    include_once '../config/autoload.php';

    $id = $_GET['id'];

    $sql_select =  "DELETE FROM daten WHERE id='".$id."'";
    $result = $con -> query($sql_select);

    if ($result === TRUE){
        header('Location: home.php');
    } else{
        echo "Konnte nicht gelöscht";
    }

    $con->close();
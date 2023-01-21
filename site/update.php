<?php
    include_once '../config/autoload.php';

    $id = $_GET['id'];
    $name = $_GET['name'];
    $datumv = $_GET['datumv'];
    $datumb = $_GET['datumb'];
    $anzahlper = $_GET['anzahlper'];
    $bem = $_GET['bemerkung'];

    //Abfrage
    $update =  "UPDATE daten SET name='$name', datumv='$datumv', datumb='$datumb', anzahlper='$anzahlper', bemerkung='$bem' WHERE id='$id'";
    $result = $con -> query($update);

    if ($con -> query($update) === TRUE) {
        header('Location: home.php');
        echo "Geändert";
    } else {
        echo "Error: " . $con -> error;
    }

    $con->close();  
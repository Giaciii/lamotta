<?php
    include_once '../config/autoload.php';

    if (!isset($_POST['submit'])) {
        die();
    }

    $name = $_POST['name'];
    $datumv = $_POST['datumv'];
    $datumb = $_POST['datumb'];
    $anzahlper = $_POST['anzahlper'];
    $bem = $_POST['bem'];

    //Hinzufügen

    $hinzu = "INSERT INTO daten(name, datumv, datumb, anzahlper, bemerkung) VALUES('$name', '$datumv', '$datumb', '$anzahlper', '$bem')";

    if ($con -> query($hinzu) === TRUE) {
        echo "Hinzugefügt";
        header('Location: home.php');
    } else {
        echo "Error: " . $con -> error;
    }

    $con->close();
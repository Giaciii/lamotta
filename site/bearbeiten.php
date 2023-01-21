<?php
    include_once '../config/autoload.php';
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Bearbeiten</title>
</head>
<body>
<?php
    $id = $_GET['id'];

    //Abfrage
    $abfrage =  "SELECT id, name, anzahlper, datumv, datumb, bemerkung FROM daten WHERE id='$id'";
    $result = $con -> query($abfrage);

    if ($result -> num_rows > 0){
        echo "<table><tr><th>ID</th><th>Name</th><th>Wer kommt?</th><th>Von</th><th>Bis</th><th>Bemerkung</th><th>Speichern</th></tr>";

        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td><form action='update.php' method='get'><input value='" . $row['id'] . "' name='id'></td>" . "<td><input value='" . $row['name'] . "' name='name'></td><td><input value='" . $row['anzahlper'] . "' name='anzahlper'></td>";
            echo "<td><input type='date' value='" . $row['datumv'] . "' name='datumv'></td>";
            echo "<td><input type='date' value='" . $row['datumb'] . "' name='datumb'></td><td><input value='" . $row['bemerkung'] . "' name='bemerkung'></td>";
            echo "<td><input type='submit' name='submit' class='be' value='Speichern'></td>";
        }

        echo "</tr></table><br>";
    } else {
        echo "Noch keine Daten";
    }

    $con->close();  
?>
</body>
</html>
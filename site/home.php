<?php
    include_once '../config/autoload.php';

    if(!isset($_SESSION['name'])){
        header('Location: ../index.php');
    }

    if(isset($_POST['logout'])){
        session_destroy();
        header('Location: ../index.php');
    }
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Home</title>
</head>
<body>
    <form method='post'>
        <input type="submit" value="Logout" name="logout" class="submit eingabe">
    </form>
    <!-- Datum wählen -->
    <center>
        <form action="daten.php" method="post" class="hinzu">
            <input type="text" placeholder="Name" name="name" class="eingabe">
            <textarea cols="30" rows="10" name="anzahlper" placeholder="Familie: und Freunde:" class="eingabe"></textarea>
            Von: <input type="date" placeholder="Datum von" name="datumv" class="eingabe">
            Bis: <input type="date" placeholder="Datum bis" name="datumb" class="eingabe">
            <textarea type="text" placeholder="Bemerkungen" name="bem" class="eingabe"></textarea>
            <input type="submit" value="Absenden" name="submit" class="submit eingabe">
        </form>
    </center>
    <?php
        //Abfrage
        $abfrage =  "SELECT id, name, anzahlper, datumv, datumb, bemerkung FROM daten";
        $result = $con -> query($abfrage);

        $session = $_SESSION['name'];

        if ($result -> num_rows > 0){
            echo "<table><tr><th>Name</th><th>Wer kommt?</th><th>Von</th><th>Bis</th><th>Bemerkung</th><th>Löschen</th></tr>";

            while($row = $result->fetch_assoc()) {
                if ($session == $row['name']) {
                    echo "<tr>";
                    echo "<td>" . $row['name'] . "</td>" . "<td>" . $row['anzahlper'] . "</td>";
                    echo "<td>" . $row['datumv'] . "</td>";
                    echo "<td>" . $row['datumb'] . "</td>" . "<td>" . $row['bemerkung'] . "</td>";
                    echo "<td><a href='bearbeiten.php?id=$row[id]' class='be'>Bearbeiten</a><a href='loeschen.php?id=$row[id]' class='lo'>Löschen</a></td>";
                }
                else {
                    echo "<tr>";
                    echo "<td>" . $row['name'] . "</td>" . "<td>" . $row['anzahlper'] . "</td>";
                    echo "<td>" . $row['datumv'] . "</td>";
                    echo "<td>" . $row['datumb'] . "</td>" . "<td>" . $row['bemerkung'] . "</td>";
                }
            }

            echo "</tr></table><br>";
        } else {
            echo "Noch keine Daten";
        }
    ?>
</body>
</html>
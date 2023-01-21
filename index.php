<?php
    include_once 'config/autoload.php';
?>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Anmelden</title>
</head>
<body>
    <form action="site/anmelden.php" method="post">
        <input type="text" placeholder="Name" name="name">
        <input type="password" placeholder="Passwort" name="pas">
        <input type="submit" value="Anmelden" name="submit">
    </form>
</body>
</html>
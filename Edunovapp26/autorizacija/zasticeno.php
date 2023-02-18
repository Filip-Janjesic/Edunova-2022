<?php
session_start();

if(!$_SESSION['auth']){
    header('location: index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<div class="top-bar" id="example-menu">
  <div class="top-bar-left">
    <ul class="dropdown menu" data-dropdown-menu>
      <li>
        <title>Polaznik 40</title>
      </li>
        <a href="#0">Polaznik 40 - Filip Janješić</a>
        <ul class="submenu menu vertical" data-submenu>
          <li><a target="_blank" href="ciklicnamatrica.hr/index.php">Ciklična matrica</a></li>
          <li><a target="_blank" href="ljubavnikalkulator.hr/index.php">Ljubavni kalkulator</a></li>
          <li><a target="_blank" href="zimskazadaca.hr/index.hr">Zimska zadaca</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
    <a href="odjava.php">Odjavi se</a>
</body>
</html>
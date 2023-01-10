<?php
// DOMAĆA ZADAĆA
// stranica prima TRI broja putem GET parametara
// stranica ispisuje najmanji broj
// Ako su svi brojevi jednaki, stranica ispisuje: jednaki su

$b1 = isset($_GET['b1']) ? $_GET['b1'] : 0;
$b2 = isset($_GET['b2']) ? $_GET['b2'] : 0;
$b3 = isset($_GET['b3']) ? $_GET['b3'] : 0;
$t1 = 'Najmanji broj je: ';
$t2 = '<br>';
$t3 = 'Svi brojevi su jednaki!';

if($b1 < $b2 && $b1 < $b3){
    echo $t1 , $b1 , $t2;
} else if ($b2 < $b1 && $b2 < $b3){
    echo $t1 , $b2 , $t2;
} else if ($b1 === $b2 && $b2 === $b3){
    echo $t3 , $t2;
} else if ($b3 < $b2 && $b3 < $b1){
    echo $t1 , $b3 , $t2;
}
?>
<?php
/*
phpinfo();

echo '<hr>';

print_r($_GET);

echo '<hr>';

$t = time();
echo $t, '<hr>';

echo '<hr>';

if(!isset($_GET['ime'])){
    echo 'Ime nije postavljeno' , '<hr>';
}

echo '<hr>';
*/


function pozdraviSvijet(){
    echo '<hr>Hello world';
    echo '<br>';
    echo 'Pozdrav svijetu';
    echo '<hr>';
}

pozdraviSvijet();
echo '22';
pozdraviSvijet();



function l($v){
    echo '<pre>';
    print_r($v);
    echo '</pre>';
    echo '<hr>';
}

$niz=[2,2,2,3];
l($niz);
l('Pero');
l([7,3,3]);

function slucajniBroj ()
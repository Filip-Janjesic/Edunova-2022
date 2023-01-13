<?php

// Vježbanje

$i=1; $j=2;
$i += ++$j - $i; //j=3 i=3
$j = --$i + $j; //j=5 i=2
echo ++$i + $j--; //8

// ovdje je j=4 ali koga to briga

echo '<hr>';


$i = 1; $j = 2; $l = 3;
$i = ++$i + $j - $l--; // i= j= l=
$j += ++$l + $i - --$j; // i= j= l=
$l -= --$j - $l + ++$i; // i= j= l=
echo $i + $j - $l; // 

<?php

// Vježbanje

$i=1; $j=2;
$i += ++$j - $i; //j=3 i=3
$j = --$i + $j; //j=5 i=2
echo ++$i + $j--; //8

// ovdje je j=4 ali koga to briga

echo '<hr>';


$i = 1; $j = 2; $l = 3;
echo $i = ++$i + $j - $l--; // i= j= l=
echo $j += ++$l + $i - --$j; // i= j= l=
echo $l -= --$j - $l + ++$i; // i=1 j=4 l=1
echo $i + $j - $l; // 4

<?php

// Vježbanje

$i=1; $j=2;
echo $i += ++$j - $i; //j=3 i=3
echo $j = --$i + $j; //j=5 i=2
echo ++$i + $j--; //8

// ovdje je j=4 ali koga to briga

echo '<hr>';

$i = 1; $j = 2;
echo $i = ++$i + $j;   // i=4 j=4
echo $j = $i - --$j;   // i=4 j=3
echo $i + $j;          // 7

echo '<hr>';

$i = 1; $j = 3;
echo $i = $i + $j;    // i=4 j=3
echo $j = $i - --$j;  // i=4 j=2
echo $i + ++$j;       // 7

echo '<hr>';

$i = 1; $j = 2;
echo $i += $i + $j++;    // i=4 j=2
echo $j -= $i - --$j;    // i=3 j=0
echo $i++ + ++$j;        // 5

echo '<hr>';

$i=3; $j=2;
echo $i = ++$j - $i; // i=0 j=3
echo $j = --$i + $j; // i=-1 j=2
echo ++$i + $j; //2

echo '<hr>';

$i = 2; $j = 2;
echo $i = $i + $j;    // i=4 j=4
echo $j = $i - --$j;  // i=4 j=3
echo $i + ++$j;       //8

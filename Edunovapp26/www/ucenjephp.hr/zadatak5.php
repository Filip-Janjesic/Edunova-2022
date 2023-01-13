<?php

// Vježbanje

$i=1; $j=2;
echo $i += ++$j - $i; //j=3 i=3
echo $j = --$i + $j; //j=5 i=2
echo ++$i + $j--; //8

// ovdje je j=4 ali koga to briga

echo '<hr>';

$i = 1; $j = 2;
echo $i = ++$i + $j;   // 
echo $j = $i - --$j;   //
echo $i + $j;          // 


echo '<hr>';

$i = 1; $j = 2;
echo $i = $i + $j;    // 
echo $j = $i - --$j;  // 
echo $i + ++$j;       // 


echo '<hr>';

$i = 1; $j = 2;
echo $i += $i + $j++;    // 
echo $j -= $i - --$j;    // 
echo $i++ + ++$j;        // 
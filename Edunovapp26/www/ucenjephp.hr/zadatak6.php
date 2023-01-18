<?php
$suma=0;
foreach($_GET as $k=>$v){
    if((int)$v===0){
        continue;
    }
   $suma+=$v;
}
echo $suma;
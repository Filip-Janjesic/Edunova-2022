<?php 
function suma($x = 10){ 
return 1.5 * (int) (($x - 1) / 3) * (int) (($x + 2) / 3) + 2.5 * (int) (( $x - 1) / 5) * (int) (($x + 4) / 5) - 7.5 * (int) (($x - 1) / 15) * (int) (($x + 14) / 15);
}
echo suma(1000);
?>
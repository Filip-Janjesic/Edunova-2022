<?php

class Pomocno{

    public static function rasponBroja ($poruka,$min,$max){
        
        while (true){
            $i=readline($poruka);
            $i=(int)$i;
            if($i<min || $i>$max){
                echo 'Unos nije dobar' . PHP_ELO;
                continue;
            }
            return $i;
        }
    }

}
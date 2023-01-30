<?php

include_once 'Pomocno.php';

class Start{
    
    public function __construct(){
        $this->pozdravnaPoruka();
        $this->glavniIzbornik();
    }

    private function pozdravnaPoruka(){
        echo 'Dobrodošli u Eunova terminal APP' . PHP_EOL;
    }

    private function glavniIzbornik(){
        echo 'Glavni izbornik' . PHP_EOL;
        echo '1. Smjerovi' . PHP_EOL;
        echo '2. Grupe' . PHP_EOL;
        echo '3. Polaznici' . PHP_EOL;
        echo '4. Predavačo' . PHP_EOL;
        echo '5. Izlaz iz programa' . PHP_EOL;
        $this->odabirOpcijeGlavniIzbornik();
    }

    private function odabirOpcijeGlavniIzbornik(){

        switch(Pomocno::rasponBroja('Odaberite opcije: ' , 1,5)){
            case 1:
                $this->smjerIzbornik();
                break;
            case 5:
                echo 'Doviđenja';
        }
    }

    private function smjerIzbornik(){
        echo 'Smjer izbornik' . PHP_EOL;
        echo '1. Pregled' . PHP_EOL;
        echo '2. Unos novog' . PHP_EOL;
        echo '3. Promjena postojećeg' . PHP_EOL;
        echo '4. Brisanje postojećeg' . PHP_EOL;
        echo '5. Povratak nazad na glavni izbornik' . PHP_EOL;
        $this->odabirOpcijeSmjer();
    }

    private function odabirOpcijeSmjer(){

        switch(Pomocno::rasponBroja('Odaberite opcije: ' , 1,5)){
            case 5:
                $this->glavniIzbornik();
        }
    }
}

new Start();
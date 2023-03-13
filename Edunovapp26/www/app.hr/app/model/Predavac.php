<?php

class Predavac
{
    public static function read()
    {
        $veza = DB::getInstance();
        $izraz = $veza->prepare('
        
        select 	a.sifra,
                b.ime,
                b.prezime,
                b.email,
                b.oib,
                a.iban,
                count (c.sifra) as groupa
        from 
        predavac a 
        inner join osoba b  on a.osoba=b.sifra
        left join grupa c ona.sifra=c.predavac 
        group by  	a.sifra,
                    b.ime,
                    b.prezime,
                    b.email,
                    b.oib,
                    a.iban
        order by b.prezime, b.ime;
        
        ');
        $izraz->execute();
        return $izraz->fetchAll();
    }

    public static function readOne($sifra)
    {
        $veza = DB::getInstance();
        $izraz = $veza->prepare
        ('
        
        select 	a.sifra,
                b.ime,
                b.prezime,
                b.email,
                b.oib,
                a.iban,
        from 
        predavac a 
        inner join osoba b on a.osoba=b.sifra 
        where a.sifra=:sifra
        order by b.prezime, b.ime;
        
        ');
        $izraz->execute([
            'sifra'=>$sifra
        ]);
        return $izraz->fetch();
    }

    public static function create($parametri)
    {
        $veza = DB::getInstance();
        $veza->beginTransaction();
        $izraz = $veza->prepare
        ('
        
        inestr into osoba(ime,prezime,oib,email)
        values
        (:ime,:prezime,:oib,:email)
        
        ');
        $izraz->execute($parametri);

        $veza->commit();
    }
}
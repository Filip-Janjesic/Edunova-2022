select * from smjer;

select * from grupa where smjer=1;

select a.naziv as smjer, b.naziv as grupa
from smjer a 
inner join grupa b 
on a.sifra=b.smjer
where a.naziv='PHP programiranje';


select a.naziv as smjer, b.naziv as grupa
from smjer a inner join grupa b 
on a.sifra=b.smjer;

insert into smjer 
values (null,'Serviser',11999.99,500,130,false);

select a.naziv as smjer,
b.naziv as grupa, 
d.ime, d.prezime
from smjer a 
inner join grupa b on a.sifra=b.smjer
inner join predavac c on b.predavac=c.sifra
inner join osoba d on c.osoba=d.sifra
where a.naziv='PHP programiranje';

select b.sifra
from osoba a inner join predavac b on a.sifra = b.osoba 
where a.ime = 'Tomislav' and a.prezime = 'Jakopec'; 

update grupa set predavac = 1
where naziv = 'PP26';

select e.ime, e.prezime
from smjer a
inner join grupa b on a.sifra = b.smjer
inner join clan c on b.sifra = c.grupa
inner join polaznik d on c.polaznik = d.sifra
inner join osoba e on d.osoba = e.sifra
where a.naziv = 'PHP programiranje';

select  * from autor;

select b.naslov
from autor a
inner join katalog b on a.sifra =b.autor
where a.ime='August' and a.prezime ='Šenoa';

select b.naslov, c.naziv as mjesto
from autor a
inner join katalog b on a.sifra =b.autor
inner join mjesto c on b.mjesto=c.sifra
where a.ime='August' and a.prezime ='Šenoa';

select
concat(a.ime, ' ', a.prezime) as autor,
b.naslov, c.naziv as mjesto,
d.naziv as izdavac
from autor a
inner join katalog b on a.sifra =b.autor
inner join mjesto c on b.mjesto=c.sifra
inner join izdavac d on b.izdavac = d.sifra
where a.ime='August' and a.prezime ='Šenoa';






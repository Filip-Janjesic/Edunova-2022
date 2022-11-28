
select * from smjer;

insert into smjer (naziv) values ('Serviser');

select * from grupa;

select a.naziv as grupa, b.naziv as smjera
from grupa a inner join smjer b
on a.smjer=b.sifra;

insert into grupa (naziv,smjer) values ('PP24 ',1);


select a.naziv as grupa, b.naziv as smjera
from grupa a right join smjer b
on a.smjer=b.sifra;

select a.naziv as smjer, b.naziv as grupa
from grupa a left join grupa b
on b.smjer=a.sifra;

select a.naziv as grupa, b.naziv as smjera,
a.predavac
from grupa a inner join smjer b
on a.smjer=b.sifra;


insert into osoba (ime,prezime) values ('Marija','Zimska');
select * from osoba;
insert into predavac (osoba) values (6);
select * from predavac;
update grupa set predavac=4 where sifra=1;

select a.naziv as grupa, b.naziv as smjera,
concat (d.ime, ' ',d.prezime) as predavac,
concat (g.ime, ' ',g.prezime) as polaznik
from grupa a 
inner join smjer b on a.smjer=b.sifra
inner join predavac c on a.predavac=c.sifra 
inner join osoba d on d.sifra=c.osoba
inner join clan e  on a.sifra = e.grupa
inner join polaznik f on e.polaznik=f.sifra 
inner join osoba g on f.osoba =g.sifra;


select a.ime, a.prezime
from osoba a 
inner join polaznik b on a.sifra=b.osoba
inner join clan c on b.sifra = c.polaznik 
inner join grupa d on c.grupa = d.sifra 
inner join smjer e on d.smjer = e.sifra
where d.naziv='PP24';


#baza knjiznica
# Odaberite sve naslove koje je napisao August Šenoa


select b.naslov
from autor a inner join katalog b on a.sifra=b.autor
where a.ime = 'August' and a.prezime = 'Šenoa';


# Odaberite nazive svih mjesta u kojima
# su objavljivali izdavači čiji naziv ne počinje
# s slovom H

select a.naziv
from mjesto a 
inner join katalog b on a.sifra=b.mjesto
inner join izdavac c on c.sifra = b.izdavac
where c.naziv not like 'H%';

# baza classic models
# odaberite sve nazive proizvoda s pripadajućim
# nazivom proizvodne linije

select a.productName, b.productLine 
from products a 
inner join productlines b on a.productline = b.productline;




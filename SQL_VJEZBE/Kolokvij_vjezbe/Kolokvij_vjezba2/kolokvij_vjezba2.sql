#Kreirajte tablice i veze između tablica.
# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Filip\Documents\Edunova-2022\Kolokvij_vjezba2\kolokvij_vjezba2.sql

DROP database IF EXISTS kolokvij_vjezba2;
CREATE database kolokvij_vjezba2;
use kolokvij_vjezba2;

CREATE TABLE prijatelj (
sifra int NOT NULL PRIMARY KEY auto_increment,
modelnaocala varchar(37),
treciputa datetime NOT null,
ekstroventno bit NOT NULL,
prviputa datetime,
svekar int not null
);

create table svekar(
sifra int not null primary key auto_increment,
stillfrizura varchar(48),
ogrlica int not null,
asocijalno bit not null
);

create table decko(
sifra int not null primary key auto_increment,
indiferentno bit,
vesta varchar(34),
asocijalno bit not null
);

create table decko_zarucnica (
sifra int not null primary key auto_increment,
decko int not null,
zarucnica int not null
);

create table zarucnica (
sifra int not null primary key auto_increment,
narukvica int,
bojakose varchar(37) not null,
novcica decimal (15,9),
lipa decimal (15,8) not null,
indiferentno bit not null
);

create table cura (
sifra int not null primary key auto_increment,
haljina varchar(33) not null,
drugiputa datetime not null,
suknja varchar(38),
narukvica int,
introvertno bit,
majica varchar(40) not null,
decko int
);

create table neprijatelj(
sifra int not null primary key auto_increment,
majica varchar(32),
haljina varchar(43) not null,
lipa decimal (16,8),
modelnaocala varchar(49) not null,
kuna decimal (12,6) not null,
jmbag char(11),
cura int
);

create table brat (
sifra int not null primary key auto_increment,
suknja varchar(47),
ogrlica int not null,
asocijalno bit not null,
neprijatelj int not null
);

alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table prijatelj add foreign key (svekar) references svekar(sifra);


# U tablice neprijatelj, cura i decko_zarucnica unesite po 3 retka.
insert into cura (haljina,drugiputa,majica) values 
('Crvena','2020-07-21','Plava'),
('Crna','2020-08-01','Zelena'),
('Žuta','2020-05-15','Plava');

insert into neprijatelj (haljina,modelnaocala,kuna) values 
('Plava','Sunčane',1200.00),
('Crvena','Dioptrijske',799.99),
('Ljubičasta','Sunčane',5999.99);

insert into decko (asocijalno) values 
(1),(0),(0);

insert into zarucnica (bojakose,lipa,indiferentno) values 
('Plava',999.99,1),
('Crna',1999.99,0),
('Smeđa',599.00,0);

insert into decko_zarucnica (decko,zarucnica) values 
(1,1),
(2,3),
(3,2);
#U tablici prijatelj postavite svim zapisima kolonu treciputa na 
#vrijednost 30. travnja 2020.
update prijatelj set treciputa ='2020-04-30';

#Izlistajte suknja iz tablice cura uz uvjet da vrijednost kolone 
#drugiputa nepoznate. 
select suknja from cura where drugiputa ='Null';

#U tablici brat obrišite sve zapise čija je vrijednost kolone ogrlica 
#različito od 14.
delete from brat where ogrlica not like 14;

#Prikažite novcica iz tablice zarucnica, neprijatelj iz tablice brat te 
#haljina iz tablice neprijatelj uz uvjet da su vrijednosti kolone 
#drugiputa iz tablice cura poznate te da su vrijednosti kolone vesta iz 
#tablice decko sadrže niz znakova ba. Podatke posložite po haljina iz 
#tablice neprijatelj silazno. 

select a.novcica, f.neprijatelj, e.haljina 
from zarucnica a 
inner join decko_zarucnica b on a.sifra = b.zarucnica 
inner join decko c on b.decko=c.sifra
inner join cura d on c.sifra = d.decko
inner join neprijatelj e on d.sifra=e.cura 
inner join brat f on e.sifra=f.neprijatelj 
where d.drugiputa is not null and c.vesta like '%ba%' order by e.haljina desc;
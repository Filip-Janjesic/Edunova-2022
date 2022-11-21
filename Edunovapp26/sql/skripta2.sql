drop database if exists uprava1;
create database uprava1;
use uprava1;

# c:\xampp\mysql\bin>mysql -uroot<C:\Users\Polaznik\Documents\EdunovaPP26\SQL\skripta2.sql

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(50)
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija (sifra);
alter table mjesto add foreign key (opcina) references opcina (sifra);
alter table zupanija add foreign key (zupan) references zupan (sifra);
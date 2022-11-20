# c:\xampp\mysql\bin\mysql -uroot < C:\Users\Filip\Documents\Edunova-2022\Vježba 1\vjezba1.sql

drop database if exists vjezba1;
create database vjezba1;
use vjezba1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table opcina(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupanija int
);

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    opcina int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);